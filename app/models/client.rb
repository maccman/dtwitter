class Client < ActiveRecord::Base
  belongs_to :user
  
  has_many :sent_messages,      :class_name => "Message", :foreign_key => "sender_id"
  has_many :received_messages,  :class_name => "Message", :foreign_key => "recipient_id"
  
  # Self referential habtm
  has_and_belongs_to_many :following,  
                          :class_name => "Client", 
                          :join_table => "clients_following", 
                          :association_foreign_key => "following_id",
                          :after_add => :propogate_following!
                          
  # This basically does the reverse of the above
  has_and_belongs_to_many :followers,  
                          :class_name => "Client", 
                          :join_table => "clients_following", 
                          :foreign_key => "following_id", 
                          :association_foreign_key => "client_id"
  
  validates_presence_of :handle
  validates_uniqueness_of :handle, :scope => :endpoint # todo - need global namespace
  validates_presence_of :endpoint, :unless => :local?
  validate :valid_endpoint
  
  named_scope :remote,  :conditions => {:local => false}
  named_scope :local,   :conditios  => {:local => true}
  
  def ip
    endpoint? && IPSocket::getaddress(endpoint) rescue nil
  end

  def ip?
    !!ip
  end
  
  def endpoint
    super || AppConfig.endpoint
  end
  
  def to_xml(options = {})
    options[:only] ||= []
    options[:only] << :endpoint
    options[:only] << :handle
    super(options)
  end

  private
  
    def propogate_following!(client)
      # todo
    end

    def valid_endpoint
      errors.add(:endpoint, "must be valid") unless local? or ip?
    end
end
