class Jedi < ApplicationRecord
  has_secure_password
  belongs_to :user
  has_many :fights
  has_many :siths, :through => :fights


end
