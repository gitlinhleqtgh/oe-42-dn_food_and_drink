class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = t("message_register_success")
      redirect_to root_path
    else
      flash.now[:danger] = t("message_register_error")
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :phone, :address, :password,
                                 :password_confirmation)
  end
end
