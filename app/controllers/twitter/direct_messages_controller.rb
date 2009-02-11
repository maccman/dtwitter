class Twitter::DirectMessagesController < TwitterController
  # GET
  # * since.  Optional.  Narrows the resulting list of direct messages to just those sent after the specified HTTP-formatted date, up to 24 hours old.  The same behavior is available by setting the If-Modified-Since parameter in your HTTP request.  Ex: http://twitter.com/direct_messages.atom?since=Tue%2C+27+Mar+2007+22%3A55%3A48+GMT
  # * since_id.  Optional.  Returns only direct messages with an ID greater than (that is, more recent than) the specified ID.  Ex: http://twitter.com/direct_messages.xml?since_id=12345
  # * page.  Optional. Retrieves the 20 next most recent direct messages.  Ex: http://twitter.com/direct_messages.xml?page=3  
  def index
    
  end
  
  # GET
  # * since.  Optional.  Narrows the resulting list of direct messages to just those sent after the specified HTTP-formatted date, up to 24 hours old.  The same behavior is available by setting the If-Modified-Since parameter in your HTTP request.  Ex: http://twitter.com/direct_messages/sent.xml?since=Tue%2C+27+Mar+2007+22%3A55%3A48+GMT
  # * since_id.  Optional.  Returns only sent direct messages with an ID greater than (that is, more recent than) the specified ID.  Ex: http://twitter.com/direct_messages/sent.xml?since_id=12345
  # * page.  Optional. Retrieves the 20 next most recent direct messages sent.  Ex: http://twitter.com/direct_messages/sent.xml?page=3  
  def sent
    
  end
  
  # POST
  # * user.  Required.  The ID or screen name of the recipient user.
  # * text.  Required.  The text of your direct message.  Be sure to URL encode as necessary, and keep it under 140 characters.   
  def new
    
  end
  
  # POST, DELETE
  # * id.  Required.  The ID of the direct message to destroy.  Ex: http://twitter.com/direct_messages/destroy/12345.json or http://twitter.com/direct_messages/destroy/23456.xml  
  def destroy
    
  end
end
