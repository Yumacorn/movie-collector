class PostsController < ApplicationController

  get '/posts' do
    "You are logged in as #{session[:email]}"
  end

  get '/posts/new' do
    #Check if user logged in
    if !logged_in?
      redirect "/login" # redirect if they aren't
    #
    else
      "A new post form" # render if they are
    end
  end

  get '/posts/:id/edit' do
    #Check if user logged in
    if !logged_in?
      redirect "/login" # redirect if they aren't
    else
      if post = current_user.posts.find_by(params[:id])
        "An edit post form #{current_user.id} is editing #{post.id}" # render if they are
      else
        redirect '/posts'
      end
    end
  end

end
