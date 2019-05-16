class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "authorization_movie_collector"
  end

  helpers do

    def logged_in?
      !!session[:email] # double negation to determine truthiness of object
    end

    def login(email)
      # check if user with email exists
      #if so, set the session
      if user = User.find_by(:email => email)
        session[:email] = user.email
      # otherwise, redirect
      else
        redirect '/login'
      end
    end

    def logout
      session.clear
    end

  end

end
