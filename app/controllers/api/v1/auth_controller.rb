class UsersController < ApplicationController
   def create
     @user = User.find_by(username: params[:username], password: params[:password])
     if @user && user.authenticate(params[:password])
       render json: {
         user: @user,
         authenticated: true
       }, status: :ok
     else
       render json: {
         message: "Your Username or Password is Incorrect.",
         authenticated: true
       }, status: :unauthorized
     end
   end
end
