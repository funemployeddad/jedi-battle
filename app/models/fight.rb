class Fight < ActiveRecord::Base
  belongs_to :jedi
  belongs_to :sith

  def battle_enemy
    jedi_is_strong_enough, jedi_is_healthy_enough = check_if_the_force_is_with_them
    if jedi_is_strong_enough && jedi_is_healthy_enough
      start_fight
    elsif jedi_is_strong_enough && !jedi_is_healthy_enough
      not_healthy_enough
    elsif jedi_is_healthy_enough && !jedi_is_strong_enough
      not_strong_enough
    else
      "The Force is not with you"
    end
  end

  def check_if_the_force_is_with_them
    jedi_is_strong_enough, jedi_is_healthy_enough = false
    if self.jedi.hp >= self.sith.power
      jedi_is_healthy_enough = true
    end
    if self.jedi.strength >= self.sith.health
      jedi_is_strong_enough = true
    end
    return [jedi_is_strong_enough, jedi_is_healthy_enough]
  end

  def start_fight
    new_hp = self.jedi.hp - self.sith.power
    new_strength = self.jedi.strength + self.sith.health
    self.jedi.update(
      :hp => new_hp,
      :strength => new_strength
    )
    "You are one with the Force. The Force is one with you."
  end

  def not_strong_enough
    "You are not strong enough in the Force to fight #{self.sith.name}. Maybe try lifting some rocks while doing a handstand."
  end

  def not_healthy_enough
    "You need some time in a bacta tank before fighting #{self.sith.name}"
  end

end
