class SessionsController < ApplicationController

  def new
    
  end

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
      redirect_to new_session_path
    end
  end

end