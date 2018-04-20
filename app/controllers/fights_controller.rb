class FightsController < ApplicationController
  def create
    fight = Fight.create(fight_params)
    message = fight.battle_enemy
    redirect_to jedi_path(fight.jedi), flash: { message:message }
  end

  private
  def fight_params
    params.require(:fight).permit(
      :jedi_id,
      :sith_id
      )
  end
end
