class CreateJedis < ActiveRecord::Migration[5.2]
  def change
    create_table :jedis do |t|
      t.string :name
      t.integer :strength
      t.integer :hp
      t.string :password_digest

      t.timestamps
    end
  end
end
