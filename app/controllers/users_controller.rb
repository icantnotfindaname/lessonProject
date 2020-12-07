class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params.require(:user).permit(:username, :password))
    if @user.save
      flash[:notice] = "User created successfully."
      redirect_to root_path
    else
      render :action :new
    end
end
