class UsersController < ApplicationController
  def new; end

  def create; end

  def edit; end

  def update; end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :city, :password, :email)
  end
end

