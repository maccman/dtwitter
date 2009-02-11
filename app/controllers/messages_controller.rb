class MessagesController < ApplicationController
  before_filter :login_required, :except => :index
  
  def index
    @messages = Message.paginate(:page => params[:page], :per_page => 50)
    responds @messages
  end
  
  def show
    sender    = Client.find_by_handle(params[:id])
    @messages = Message.for_sender(sender).paginate(:page => params[:page], :per_page => 50)
    responds(@messages) {
      render :action => "index"
    }
  end
  
  def private
    @messages = Message.for_recipient(current_client).paginate(
                  :page => params[:page], :per_page => 50
                )
    responds @messages
  end
  
  def replies
    @messages = Message.for_recipient(current_client).replies(current_client).paginate(
                  :page => params[:page], :per_page => 50
                )
    responds @messages
  end
  
  def create
    @message = Message.new(params[:message])
    @message.sender = current_client
    @message.save!
    @message.send_to_followers!
    head 201
  end
end
