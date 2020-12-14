class SessionsController < ApplicationController
  
  def new
    
  end

  def create
    @user = User.find_by(username: params[:username], password: params[:password])
    if @user
      session[:user_id] = @user.id
      flash[:notice] = "Login success!"
      redirect_to root_path
    else
      flash[:notice] = "Wrong username or password"
      render action: :new
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = "Exit success!"
    redirect_to root_path
  end
end
