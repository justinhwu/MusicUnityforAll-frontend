class Api::V1::AuthController < ApplicationController
   def create
     @user = User.find_by(username: params[:username])
     if @user && @user.authenticate(params[:password])
       payload = {user_id: @user.id}
       token = encode(payload)
       render json: {
         user: @user,
         token: token,
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
