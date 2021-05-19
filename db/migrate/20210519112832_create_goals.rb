class CreateGoals < ActiveRecord::Migration[6.1]
  def change
    create_table :goals do |t|
      t.references :match, null: false, foreign_key: true
      t.references :team, null: false, foreign_key: true
      t.references :player, null: false, foreign_key: true
      t.string :period, null: false
      t.string :minute, null: false
      t.string :second, null: false

      t.timestamps
    end
  end
end
