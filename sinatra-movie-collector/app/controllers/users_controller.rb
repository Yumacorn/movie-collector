class UsersController < ApplicationController
  get '/signup' do
    erb :"user/new.html"
  end

  post '/users' do
    @user = User.new
    @user.email = param[:email]
    @user.password = params[:password]
    if @user.save
      redirect '/login'
    else
      erb :"users/new"
    end
  end
end
