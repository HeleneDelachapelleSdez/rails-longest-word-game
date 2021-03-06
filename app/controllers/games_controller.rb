class GamesController < ApplicationController
  def new
    @letters = generate_grid(10)
  end

  def score
    @guess = params[:suggestion]
    @grid = params[:grid].split('')
  end

  private

  def generate_grid(grid_size)
    # TODO: generate random grid of letters
    Array.new(grid_size) { ('A'..'Z').to_a.sample }
  end
end
