class PostsController < ApplicationController

  def create
    post = Post.new(params[:post])
    if post.save
      flash[:success] = "post created!"
    else
      flash[:errors] = "post not created" #how do mongo errors save on object?
    end
    redirect_to user_path(post.user)
  end

end