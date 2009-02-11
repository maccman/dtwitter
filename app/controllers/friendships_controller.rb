class FollowingController < ApplicationController
  before_filter :login_required
  before_filter :find_client
  
  def create
    current_client.following << @client
    head 200
  end
  
  def destroy
    current_client.following.delete(@client)
    head 204
  end
  
  private 
  
    def find_client
      @client = Client.find_by_handle(params[:client_id])
    end
end
