class CreateChampions < ActiveRecord::Migration[6.0]
  def change
    create_table :champions do |t|
      t.string :name
      t.text :description
      t.string :role

      t.timestamps
    end
  end
end
