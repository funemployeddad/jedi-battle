class SessionsController < ApplicationController
  skip_before_action :verify_user_is_authenticated, only: [:new,:create]

  def create
    if auth[:uid]
    @user = User.find_or_create_by(uid: auth['uid']) do |u|
      u.name = auth['info']['name']
      u.email = auth['info']['email']
      u.image = auth['info']['image']
      u.password = SecureRandom.hex(9)
      end
    else
      @user = User.find_by(:email => params[:email])
    end

    @user.save

    session[:user_id] = @user.id

    redirect_to user_path(current_user)
  end

  def destroy
    session.delete :user_id
    redirect_to root_path
  end

  private

  def auth
    request.env['omniauth.auth']
  end

  def user_params
    params.require(:users).permit(:name, :email, :password, :password_confirmation)
  end

end
