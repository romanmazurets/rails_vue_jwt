class UsersController < ApplicationController
  def create
    user = User.new user_params
    if user.save
      token = Knock::AuthToken.new(payload: {sub: user.id}).token
      render json: {jwt: token, user: user}, status: :created
    else
      render json: {errors: user.errors.full_messages}, status: :conflict
    end
  end

  def update; end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :city, :password, :email)
  end
end

