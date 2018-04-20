class CreateJedis < ActiveRecord::Migration[5.2]
  def change
    create_table :jedis do |t|

      t.timestamps
    end
  end
end
