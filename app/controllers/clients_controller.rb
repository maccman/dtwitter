class ClientsController < ApplicationController
  before_filter :find_client
  
  def following
    responds @client.following
  end
  
  def followers
    responds @client.followers
  end
  
  private
  
    def find_client
      @client = Client.find_by_handle(params[:id])
    end
end
