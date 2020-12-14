class UsersController < ApplicationController

  before_action :auth_user, only: [:index]

  def new
    @user = User.new
  end

  def create
    @user = User.new(params.require(:user).permit(:username, :password))
    if @user.save
      flash[:notice] = "User created successfully."
      redirect_to new_session_path
    else
      render action: :new 
    end
  end

  def index
    @users = User.page(params[:page] || 1).per_page(params[:per_page] || 10)
      .order("id desc")
  end

  private
  def auth_user
    unless session[:user_id]
      flash[:notice] = "Login to view this page"
      redirect_to root_path
    end
  end

end

# 如果没有保存成功   
# render：让用户重新输入自己的信息，也就是重新到new页面
# 为什么不直接重定向？ 因为一般不是系统性的错误，
# 可以直接输出错误 重定向会重新执行new方法，所以刚才保存的错误提示没有被保存
