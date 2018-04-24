class CreateJedis < ActiveRecord::Migration[5.2]
  def change
    create_table :jedis do |t|
      t.string :name
      t.integer :strength
      t.integer :hp

      t.timestamps
    end
  end
end
