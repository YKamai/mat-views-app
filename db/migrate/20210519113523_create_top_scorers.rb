class CreateTopScorers < ActiveRecord::Migration[6.1]
  def change
    create_view :top_scorers, materialized: true

    add_index :top_scorers, :player_name
    add_index :top_scorers, :player_id
    add_index :top_scorers, :team_name
    add_index :top_scorers, :team_id
    add_index :top_scorers, :season
  end
end
