get '/login' do
  # Render a login form
  erb :'/users/index'
end

post '/login'  do
  @user = User.authenticate(params[:email], params[:password])
  if @user
    session[:id] = @user.id
    redirect "/users/#{@user.id}"
  else
    @errors = ['email or password was incorrect']
    erb :'users/index'
  end
  #rescue error
end

delete '/logout' do
  session[:id] = nil
  redirect '/'
end