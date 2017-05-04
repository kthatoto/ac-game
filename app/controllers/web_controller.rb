class WebController < ApplicationController

  def top
    @user = current_user
  end

  def login
    debugger
    if params[:login]
      @sent = "test"
    end
  end
end
