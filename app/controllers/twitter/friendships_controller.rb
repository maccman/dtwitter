class Twitter::FriendshipsController < TwitterController
  # POST
  # * id.  Required.  The ID or screen name of the user to befriend.  Ex: http://twitter.com/friendships/create/12345.json or http://twitter.com/friendships/create/bob.xml
  # * follow.  Optional.  Enable notifications for the target user in addition to becoming friends.  Ex:  http://twitter.com/friendships/create/bob.json?follow=true  
  def create
    
  end
  
  # POST, DELETE
  # * id.  Required.  The ID or screen name of the user with whom to discontinue friendship.  Ex: http://twitter.com/friendships/destroy/12345.json or http://twitter.com/friendships/destroy/bob.xml
  def destroy
    
  end
  
  # GET
  # * user_a.  Required.  The ID or screen_name of the first user to test friendship for.
  # * user_b.  Required.  The ID or screen_name of the second user to test friendship for.
  # * Ex: http://twitter.com/friendships/exists.xml?user_a=alice&user_b=bob  
  def exists
    
  end
end
