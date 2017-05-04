post '/photos' do
  p params
  @photo = Photo.new(params[:photo])
  if @photo.save

    redirect "/locations/#{@photo.location.id}"
  else
    @errors = @photo.errors.full_messages
    erb :'users/new'
  end
end
