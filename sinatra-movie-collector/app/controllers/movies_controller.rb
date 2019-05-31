class MoviesController < ApplicationController

  get '/movies' do
    # "You are logged in as #{session[:email]}"
    erb :"movies/movies.html"
  end

  get '/movies/new' do
    #Check if user logged in
    if !logged_in?
      redirect "/login" # redirect if they aren't
    #
    else
      "A new movie form" # render if they are
    end
  end

  get '/movies/:id/edit' do
    #Check if user logged in
    if !logged_in?
      redirect "/login" # redirect if they aren't
    else
      if movie = current_user.movies.find_by(params[:id])
        "User ##{current_user.id} [#{current_user.email}] is editing movie ##{movie.id}" # render if they are
      else
        redirect '/movies'
      end
    end
  end

end
