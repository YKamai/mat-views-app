class TopScorersController < ApplicationController
  def index
    @scorers = TopScorer.best(params.fetch(:top, 1))
  end
end
