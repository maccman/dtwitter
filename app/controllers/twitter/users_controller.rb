class Twitter::UsersController < TwitterController
  # GET
  # * id.  Optional.  The ID or screen name of the user for whom to request a list of friends.  Ex: http://twitter.com/statuses/friends/12345.json or http://twitter.com/statuses/friends/bob.xml
  # * page.  Optional. Retrieves the next 100 friends.  Ex: http://twitter.com/statuses/friends.xml?page=2
  def friends
    
  end
  
  # GET
  # * id.  Optional.  The ID or screen name of the user for whom to request a list of followers.  Ex: http://twitter.com/statuses/followers/12345.json or http://twitter.com/statuses/followers/bob.xml
  # * page.  Optional. Retrieves the next 100 followers.  Ex: http://twitter.com/statuses/followers.xml?page=2  
  def followers
    
  end
  
  # GET
  # * id.  The ID or screen name of a user.  Ex: http://twitter.com/users/show/12345.json or http://twitter.com/users/show/bob.xml
  # * email. May be used in place of "id" parameter above.  The email address of a user.  May be used in place of Ex: http://twitter.com/users/show.xml?email=test@example.com  
  def show
    
  end
end
