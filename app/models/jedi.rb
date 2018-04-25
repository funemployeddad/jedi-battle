class Jedi < ApplicationRecord

  belongs_to :user
  has_many :fights
  has_many :siths, :through => :fights


end
