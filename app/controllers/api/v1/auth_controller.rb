class UsersController < ApplicationController
   def create
     @user = User.find_by(username: params[:username], password: params[:password])
     if @user && user.authenticate(params[:password])
       render json: @user
     else
       render json: {error: "Your Username or Password is Incorrect."}
     end
   end
end
