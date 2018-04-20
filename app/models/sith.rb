class Sith < ApplicationRecord
  has_many :fights
  has_many :jedis, :through => :fights

end
