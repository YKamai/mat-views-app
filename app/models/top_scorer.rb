class TopScorer < ApplicationRecord
  belongs_to :player
  belongs_to :team
  belongs_to :match

  def self.best(num = 1)
    # where(season: season).order(goal_count: :desc).limit(top).first
    order(goal_count: :desc).limit(num).to_a
  end

  def self.refresh
    Scenic.database.refresh_materialized_view(table_name, concurrently: false, cascade: false)
  end

  def readonly?
    true
  end
end
