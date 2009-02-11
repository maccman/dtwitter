class Twitter::StatusesController < TwitterController
  before_filter :auth, :except => [:public_timeline]
  
  # GET
  def public_timeline
    
  end
  
  # GET
  # * since.  Optional.  Narrows the returned results to just those statuses created after the specified HTTP-formatted date, up to 24 hours old.  The same behavior is available by setting an If-Modified-Since header in your HTTP request.  Ex: http://twitter.com/statuses/friends_timeline.rss?since=Tue%2C+27+Mar+2007+22%3A55%3A48+GMT
  # * since_id.  Optional.  Returns only statuses with an ID greater than (that is, more recent than) the specified ID.  Ex: http://twitter.com/statuses/friends_timeline.xml?since_id=12345
  # * count.  Optional.  Specifies the number of statuses to retrieve. May not be greater than 200.  Ex: http://twitter.com/statuses/friends_timeline.xml?count=5 
  # * page. Optional. Ex: http://twitter.com/statuses/friends_timeline.rss?page=3
  def friends_timeline
    
  end

  # GET
  # * id.  Optional.  Specifies the ID or screen name of the user for whom to return the friends_timeline.  Ex: http://twitter.com/statuses/user_timeline/12345.xml or http://twitter.com/statuses/user_timeline/bob.json.
  # * count.  Optional.  Specifies the number of statuses to retrieve. May not be greater than 200.  Ex: http://twitter.com/statuses/user_timeline.xml?count=5 
  # * since.  Optional.  Narrows the returned results to just those statuses created after the specified HTTP-formatted date, up to 24 hours old.  The same behavior is available by setting an If-Modified-Since header in your HTTP request.  Ex: http://twitter.com/statuses/user_timeline.rss?since=Tue%2C+27+Mar+2007+22%3A55%3A48+GMT
  # * since_id.  Optional.  Returns only statuses with an ID greater than (that is, more recent than) the specified ID.  Ex: http://twitter.com/statuses/user_timeline.xml?since_id=12345
  # * page. Optional. Ex: http://twitter.com/statuses/user_timeline.rss?page=3
  def user_timeline
    
  end
  
  # GET
  # * id
  def show
    
  end
  
  # POST
  # * status.  Required.  The text of your status update.  Be sure to URL encode as necessary.  Should not be more than 140 characters.
  # * in_reply_to_status_id.  Optional.  The ID of an existing status that the status to be posted is in reply to.  This implicitly sets the in_reply_to_user_id attribute of the resulting status to the user ID of the message being replied to.  Invalid/missing status IDs will be ignored.
  def update
    
  end
  
  # GET
  # * page.  Optional. Retrieves the 20 next most recent replies.  Ex: http://twitter.com/statuses/replies.xml?page=3
  # * since.  Optional.  Narrows the returned results to just those replies created after the specified HTTP-formatted date, up to 24 hours old.  The same behavior is available by setting an If-Modified-Since header in your HTTP request.  Ex: http://twitter.com/statuses/replies.xml?since=Tue%2C+27+Mar+2007+22%3A55%3A48+GMT
  # * since_id.  Optional.  Returns only statuses with an ID greater than (that is, more recent than) the specified ID.  Ex: http://twitter.com/statuses/replies.xml?since_id=12345  
  def replies
    
  end
  
  # POST, DELETE
  # * id
  def destroy
    
  end
end