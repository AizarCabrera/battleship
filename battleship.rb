require './lib/game'
require './lib/player'

class BattleShip
  def initialize
    start
  end

  def start
    p "Welcome to BATTLESHIP"
    p  "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
    input = gets.chomp
    respond_to_player(input)
  end

  def respond_to_player(input)
    if input == 'p' || input == 'play'
      player_1 = Player.new('computer')
      player_2 = Player.new('human')

      Game.new(player_1, player_2)
    elsif input == 'i' || input == 'instructions'
      #print instructions
    elsif input == 'q' || input == 'quit'
      puts "Bye!"
    else
      puts 'invalid answer, try again'
      start
    end
  end
end

BattleShip.new
