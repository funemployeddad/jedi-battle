class Jedi < ApplicationRecord
  has_secure_password
  has_many :fights
  has_many :enemies, through: => :fights

  def health
    unless admin
      hp > 0 ? 'alive' : 'dead'
    end
  end
end
