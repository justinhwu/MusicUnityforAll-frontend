class Api::V1::UsersController < ApplicationController
  def show
    render json: User.find(params[:id])
  end

  def home
    token = request.headers["Authentication"].split(" ")[1]
    payload = decode(token)
    @user = User.find(payload["user_id"])
    render json: @user
  end

  private
  def user_params
    params.require(:user).permit!
  end

end
