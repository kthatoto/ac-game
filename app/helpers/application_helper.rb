module ApplicationHelper

  def sign_in(user)
    session[:user_id] = user.user_id
  end
  def sign_out
    session.delete(:user_id)
  end
  def current_user
    @current_user ||= User.find_by(user_id: session[:user_id])
  end
end
