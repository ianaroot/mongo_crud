class SessionsController < ApplicationController

  def create
    begin
      user = User.find_by(email: params[:email])
    rescue
      user = nil
    end    
    if user && user.authenticate(params[:password]) 
      sign_in(user)
      redirect_to user_path(user)
    else
      redirect_to root_path
    end
  end

  def destroy 
    cookies.delete :user_id
    redirect_to root_path
  end
end