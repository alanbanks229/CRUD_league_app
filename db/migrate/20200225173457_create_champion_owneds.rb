class CreateChampionOwneds < ActiveRecord::Migration[6.0]
  def change
    create_table :champion_owneds do |t|
      t.integer :user_id
      t.integer :champion_id

      t.timestamps
    end
  end
end
