class Jedi < ApplicationRecord
  has_secure_password
  has_many :fights
  has_many :siths, :through => :fights

  def health
    hp > 0 ? 'alive' : 'dead'
  end
end
