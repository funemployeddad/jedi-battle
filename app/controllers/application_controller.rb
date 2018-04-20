class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :verify_jedi_is_authenticated
  helper_method :current_jedi

  private
  def verify_jedi_is_authenticated
    redirect_to '/' unless jedi_is_authenticated
  end

  def jedi_is_authenticated
    !!current_jedi
  end

  def current_jedi
    Jedi.find_by(id:session[:jedi_id])
  end
end
