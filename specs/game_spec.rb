require 'minitest/autorun'
require 'minitest/rg'
require_relative '../models/game.rb'

class GameTest < MiniTest::Test
  def setup
    @game1 = Game.new()
  end

  def test_player1_wins
    assert_equal('Player 1 wins', @game1.play('rock', 'paper'))
  end

  def test_player2_wins
    assert_equal('Player 2 wins', @game1.play('paper', 'rock'))
  end

  def test_tie
    assert_equal('tie', @game1.play('paper', 'paper'))
  end
end
