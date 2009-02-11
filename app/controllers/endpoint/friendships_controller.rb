class Endpoint::FriendshipsController < EndpointController
  def create
    params[:friendship] ||= {}
    @client_a = Client.find_or_create_by_handle_and_endpoint(
      params[:friendship][:handle], params[:friendship][:endpoint]
    )
    @client_b = Client.find(params[:id])
    @client_b.followers << @client_a
    # todo
    head 200
  end
end