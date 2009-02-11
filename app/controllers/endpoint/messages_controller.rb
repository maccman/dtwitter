class Endpoint::MessagesController < EndpointController
  def create
    @message = Message.new(params[:message])

    # Check Reverse DNS
    if !@message.ip? || (@message.ip != request.remote_ip)
      responds_error
      return
    end
    
    if @mesage.receivers
      @mesage.receivers.each {|client|
        Message.transaction do
         m = Message.new(params[:message])
         m.sender = client
         m.save!
       end
      }
    else
      @message.save!
    end
    responds_creation @message
  end
end