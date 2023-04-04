require_relative "./InputOutput"
require "./Player"
require "./Game"

class Main
  include InputOutput

  def initialize
    display MESSAGES[:welcome_message]
    player1 = Player.new(get_player_name 1)
    player2 = Player.new(get_player_name 2)
    game = Game.new(player1, player2)
    game.play
    game.announce_winner
  end
end

Main.new
