class SithsController < ApplicationController
  def index
    @siths = Sith.all
  end

  def show
    @sith = Sith.find_by(id: params[:id])
    @fight = @sith.fights.build(jedi_id:current_jedi.id)
  end

  def new
    @sith = Sith.new
  end

  def create
    sith = Sith.create(sith_params)
    redirect_to sith_path(sith)
  end

  def edit
    @sith = Sith.find_by(id: params[:id])
    @fight = @sith.fights.build(jedi_id:current_jedi.id)
  end

  def update
    sith = Sith.find_by(id: params[:id])
    sith.update(sith_params)
    redirect_to sith_path(sith)
  end

  private
  def sith_params
    params.require(:sith).permit(
        :name,
        :power,
        :health
      )
  end

end
