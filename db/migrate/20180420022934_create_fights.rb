class CreateFights < ActiveRecord::Migration[5.2]
  def change
    create_table :fights do |t|
      t.integer :jedi_id
      t.integer :sith_id

      t.timestamps
    end
  end
end
