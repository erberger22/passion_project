require 'bcrypt'

class User < ActiveRecord::Base

  validates :email, uniqueness: true
  validates :user_name, :email, presence: true
  # users.password_hash in the database is a :string
  include BCrypt

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

  def self.authenticate(email, password)
    @user = User.find_by(email: email)
    #raise std error
    if @user && @user.password == password
      @user
    else
      nil
    end
  end
end
