class WebController < ApplicationController

  def top
    @user = current_user
  end

  def login
    if params[:login]
      if user = User.find_by(user_id: params[:login][:user_id], password: params[:login][:password])
        session[:user_id] = user.user_id
        redirect_to :root
      else
        # 違いますアラート
      end
    end
  end
  def logout
    session.delete(:user_id)
    redirect_to :root
  end
end
