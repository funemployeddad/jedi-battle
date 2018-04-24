class SessionsController < ApplicationController
  skip_before_action :verify_user_is_authenticated, only: [:new,:create]

  def create
    @user = User.find_or_create_by(uid: auth['uid']) do |u|
      u.name = auth['info']['name']
      u.email = auth['info']['email']
      u.image = auth['info']['image']
    end

    session[:user_id] = @user.id

    render 'users/show'
  end

  def destroy
    reset_session
    redirect_to login_path
  end

  private

  def auth
    request.env['omniauth.auth']
  end
end
