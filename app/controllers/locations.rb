get '/locations' do
  @locations = Location.all
  erb :'locations/index'
end

get '/locations/:id' do
  @location = Location.find(params[:id])
  @photos = @location.photos.to_xml
  erb :'locations/show', layout: false
end
