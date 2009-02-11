class Message < ActiveRecord::Base
  belongs_to :receiver, :class_name => "Client"
  belongs_to :sender,   :class_name => "Client"
  
  validates_presence_of :body
  validates_length_of   :body, :within => 0..140
  validates_presence_of :recipient_id
  validates_presence_of :sender_id
  validate :valid_sender, :if => [:receiver, :sender]
  
  attr_accessor :receivers
  
  def sender=(d)
    if d.is_a?(Client)
      write_attribute(:sender, d)
    else
      write_attribute(:sender,
        Client.find_by_handle_and_endpoint(
          d.handle, d.endpoint
        )
      )
    end
  end
  
  named_scope :for_recipient, lambda {|recipient| 
    {:conditions => {:recipient_id => recipient.id}}
  }
  
  named_scope :for_sender, lambda {|sender|
    {:conditions => {:sender_id => sender.id}}
  }
  
  # Maybe save this on creation to speed up search
  named_scope :replies, lambda {|client| 
    {
      :conditions => [
        "body = ? OR body = ?", 
        "%@#{client.handle}%",
        "%#{client.handle}@%"
      ]
    }
  }
  
  def send_to_followers!
    return unless sender
    # We group by endpoint so we only ever send 
    # one POST to each endpoint
    sender.followers.remote.group_by(&:endpoint).each {|endpoint, clts|
      begin
        ref = Remote::Message.new({
          :body       => body,
          :sender     => sender,
          :receivers  => clts,
        })
        ref.site = endpoint
        ref.save # todo
      end
    }
    
    sender.followers.local.each {|f|
      Message.create({
        :body     => body,
        :sender   => sender,
        :receiver => f
      })
    }
  end
  
  private
    def valid_sender
      errors.add(:sender, "is not followed") unless receiver.followers.include?(sender)
    end
end
