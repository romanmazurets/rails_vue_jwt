class UsersController < ApplicationController
  def create
    user = User.new user_params
    if user.save
      render json: {'action': 'done'}
    else
      render json: {'action': 'wrong'}
    end
  end

  def update; end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :city, :password, :email)
  end
end

