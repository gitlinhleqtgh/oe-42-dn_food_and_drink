class SessionsController < ApplicationController
  def create
    user = User.find_by email: params[:session][:email].downcase
    if user&.authenticate(params[:session][:password])
      login user
      redirect_to root_path
    else
      flash.now[:danger] = t("danger_login")
      redirect_to login_path
    end
  end

  def destroy
    logout
    redirect_to root_path
  end
end
