class GamesController < ApplicationController
  def new
    @letters = ("a".."z").to_a.sample(10)
  end

  def score
    @word = params[:word]
    @letters = params[:letters]
    if @word = @word.include?(@letters)
      @answer = "sorry but #{@word} cannot be built out of #{@letters}"
    end
  end
end
