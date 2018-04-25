class User < ApplicationRecord
<<<<<<< HEAD

  has_many :jedi
=======
    has_secure_password

    has_many :jedis
>>>>>>> 42b567389bf10f82339e6ba4e9588869052eb5c5
end
