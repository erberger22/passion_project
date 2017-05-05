post '/photos' do
  @photo = Photo.new(params[:photo])
  if @photo.save

    redirect "/locations/#{@photo.location.id}"
  else
    @errors = @photo.errors.full_messages
    erb :'users/new'
  end
end

get "/locations/:location_id/photos" do
  @locations = Location.all
  @location = Location.find(params[:location_id])
  @photos = @location.photos
  if @photos.length > 4
    @location.photos.first.destroy
    @photos = @location.photos
  end
  erb :'photos/index'
end
