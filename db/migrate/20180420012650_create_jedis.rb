class CreateJedis < ActiveRecord::Migration[5.2]
  def change
    create_table :jedis do |t|
      t.string :name
      t.integer :force_power
      t.integer :health
      t.integer :user_id

      t.timestamps
    end
  end
end
