class PostsController < ApplicationController

  get '/posts' do
    "You are logged in as #{session[:email]}"
  end

  get '/posts/new' do
    #Check if user logged in
    if !session[:email]
      redirect "/login" # redirect if they aren't
    #
    else
      "A new post form" # render if they are
    end
  end

  get '/posts/:id/edit' do
    #Check if user logged in
    if !session[:email]
      redirect "/login" # redirect if they aren't
    #
    else
      "An edit post form" # render if they are
    end
  end

end
