require 'pry-byebug'

class Game
  def play(player1, player2)
    hands = {
      'rock'     => { 'rock' => 'tie',   'paper' => 'Player 2 wins',  'scissors' => 'Player 1 wins' },
      'paper'    => { 'rock' => 'Player 1 wins',   'paper' => 'tie',   'scissors' => 'Player 2 wins' },
      'scissors' => { 'rock' => 'Player 2 wins',  'paper' => 'Player 1 wins',   'scissors' => 'tie' },
    }

    case player2
    when 'rock'
      return hands['rock'][player1]
    when 'paper'
      return hands['paper'][player1]
    when 'scissors'
      return hands['scissors'][player1]
    end
  end
end
