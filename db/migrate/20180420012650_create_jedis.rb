class CreateJedis < ActiveRecord::Migration[5.2]
  def change
    create_table :jedis do |t|
      t.string :name
      t.integer :strength
      t.integer :hp
<<<<<<< HEAD
      t.string :password_digest
      t.integer :user_id
=======
>>>>>>> 42b567389bf10f82339e6ba4e9588869052eb5c5

      t.timestamps
    end
  end
end
