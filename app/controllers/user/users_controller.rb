class User::UsersController < ApplicationController
  def top
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
  end

  def update
  end

  private
  def user_params
    params.require(:user).permit(:name, :introduction, :user_image)
  end
end
