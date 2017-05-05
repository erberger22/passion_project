get '/locations' do
  @locations = Location.all
  erb :'locations/index'
end

get '/locations/:id' do
  @location = Location.find(params[:id])
  @photos = @location.photos.to_json
  p @photos.first
  erb :'locations/show.js', layout: false
end
