class SessionController < ApplicationController
  skip_before_action :verify_jedi_is_authenticated, only: [:new,:create]
  def new
    @jedi = Jedi.new
  end

  def create
    if @jedi = Jedi.find_by(name:params[:jedi][:name])
      session[:jedi_id] = @jedi.id
      redirect_to jedi_path(@jedi)
    else
      render 'new'
    end
  end

  def destroy
    session.delete("jedi_id")
    redirect_to root_path
  end
end
