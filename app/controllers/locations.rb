get '/locations' do
  @locations = Location.all
  erb :'locations/index'
end

get '/locations/:id' do
  p 'i am here'
  @location = Location.find(params[:id])

  erb :'locations/show', layout: false
end
