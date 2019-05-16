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
      session[:email] = email
    end

    def logout
      session.clear
    end

  end

end
