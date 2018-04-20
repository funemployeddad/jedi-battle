class Jedi < ApplicationRecord
  has_secure_password
  has_many :fights
  has_many :siths, :through => :fights


end
