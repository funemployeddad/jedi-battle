class CreateSiths < ActiveRecord::Migration[5.2]
  def change
    create_table :siths do |t|
      t.string :name
      t.integer :force_power
      t.integer :health

      t.timestamps
    end
  end
end
