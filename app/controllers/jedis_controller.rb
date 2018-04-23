class JedisController < ApplicationController
  skip_before_action :verify_user_is_authenticated, only: [:new,:create]
  def new
    @jedi = Jedi.new
  end

  def create
    if (jedi = Jedi.create jedi_params)
      session[:jedi_id] = jedi.id
      redirect_to jedi_path(jedi)
    else
      render 'new'
    end
  end

  def show
    @jedi = Jedi.find_by(id:params[:id])
  end

  private
  def jedi_params
    params.require(:jedi).permit(
      :name,
      :strength,
      :admin,
      :password,
      :hp
      )
    end

end
