class Twitter::FavoritesController < TwitterController
  # GET
  # * id.  Optional.  The ID or screen name of the user for whom to request a list of favorite statuses.  Ex: http://twitter.com/favorites/bob.json or http://twitter.com/favorites/bob.rss
  # * page.  Optional. Retrieves the 20 next most recent favorite statuses.  Ex: http://twitter.com/favorites.xml?page=3   
  def index
  end
  
  # POST
  # * id.  Required.  The ID of the status to favorite.  Ex: http://twitter.com/favorites/create/12345.json or http://twitter.com/favorites/create/45567.xml
  def create
    
  end
  
  # POST, DELETE
  # * id.  Required.  The ID of the status to un-favorite.  Ex: http://twitter.com/favorites/destroy/12345.json or http://twitter.com/favorites/destroy/23456.xml 
  def destroy
    
  end
end
