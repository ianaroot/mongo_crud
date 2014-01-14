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

def destroy
  p params
  post = Post.find(params[:id])
  post.delete
  redirect_to user_path(post.user)
end

def edit
  @post = Post.find(params[:id])
end

def update
  post = Post.find(params[:id])
  if post.update_attributes(params[:post])
    redirect_to user_path(post.user)
  else
    redirect_to edit_post_path(post)
  end
end
  

end