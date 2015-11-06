
get "/artists" do
  @artists = Artist.all
  erb :"artists/index"
end

get "/artists/new" do
  erb :"artists/new"
end

post "/artists" do
  @artist = Artist.create(name: params[:name], photo_url: params[:photo_url], nationality: params[:nationality])
  redirect "/artists"
end

get "/artists/:id" do
@artist = Artist.find(params[:id])
erb :"artists/show"
end
