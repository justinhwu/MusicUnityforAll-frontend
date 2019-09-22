class Api::V1::UsersController < ApplicationController
  def index
    render json: User.all, include: '**'
  end

  def login
    @user = User.find_by(username: params[:username], password: params[:password])
    if @user
      render json: @user
    else
      render json: {error: "Your Username or Password is Incorrect."}
    end
  end

  def profile
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
