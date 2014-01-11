module SessionsHelper

  def sign_in(user)
    cookies.permanent[:user_id] = user.id
  end

  def authorize(user)
    p user.id.to_s == cookies[:user_id]
  end
end