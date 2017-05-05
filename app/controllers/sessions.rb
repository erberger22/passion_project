get '/login' do
  # Render a login form
  erb :'/users/index'
end

post '/login'  do
  login
  redirect '/'
end

delete '/logout' do
  logout
  redirect '/'
end
