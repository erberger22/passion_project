helpers do
  def login
    @user = User.authenticate(params[:email], params[:password])
    if @user
      session[:id] = @user.id
      redirect "/users/#{@user.id}"
    else
      @errors = ['login failed, email or password was incorrect']
      erb :'users/index'
    end

  end

  def current_user
    @user ||=User.find(session[:id]) if session[:id]
  end

  def logout
    session[:id] = nil
  end

  def logged_in?
    if session[:id] == nil
      false
    else
      true
    end
  end
end
