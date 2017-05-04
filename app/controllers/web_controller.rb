class WebController < ApplicationController

  def top
    @user = current_user
  end

  def login
    if params[:login]
      if user = User.find_by(user_id: params[:login][:user_id], password: params[:login][:password])
        sign_in(user)
        redirect_to :root
      else
        # 違いますアラート
      end
    end
  end
  def logout
    sign_out
    redirect_to :root
  end

  def login_check
    login_ids = LoginUserId.first
    user_ids = JSON.parse(login_ids.user_ids)
    user_ids[current_user.id.to_s] = Time.now.to_s

    user_ids.delete_if {|id, time| (Time.now - time.to_time).to_i > 60 }

    login_ids.update(user_ids: user_ids.to_json)

    ids = user_ids.keys.map{|key|key.to_i}
    users = User.where(id: ids)

    render partial: "users/index", locals: {users: users}
  end
end
