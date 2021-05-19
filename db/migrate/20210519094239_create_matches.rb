class CreateMatches < ActiveRecord::Migration[6.1]
  def change
    create_table :matches do |t|
      t.references :home_team, null: false, foreign_key: { to_table: :teams }
      t.references :away_team, null: false, foreign_key: { to_table: :teams }
      t.timestamp :match_time, null: false
      t.string :season, null: false

      t.timestamps
    end
    add_index :matches, :season
  end
end
