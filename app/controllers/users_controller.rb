class UsersController < ApplicationController
  skip_before_action :verify_user_is_authenticated, only: [:new,:create]

  def new
    @user = User.new
  end

  def create
    @user = User.new(:name => params[:name], :email => params[:email], :password_digest => params[:password])
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  # private
  # def user_params
  #   params.require(:users).permit(:name, :email, :password, :password_confirmation, :uid, :image)
  # end
end
