class UsersController < ApplicationController
  def index
    render json: User.all
  end

  def login
    @user = User.find_by(username: params[:username])
    byebug
    if @user
      render json: @user
    else
      render json: {error: "Your Username or Password is Incorrect."}
    end
  end

  private
  def user_params
    params.require(:user).permit!
  end

end
