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
      puts'Players take turns firing shots (by calling out a grid coordinate)
       to attack enemy ships.on your turn, call out a letter and a number that
       identifies a row and column on your target grid. Your opponent checks
       that coordinate on his ocean grid and responds "miss" if there
       is no ship there, or "hit" if you have correctly guessed a space that is
       occupied by one of his ships.'
      puts'When it is your opponents turn to fire shots at you, each time
       one of your ships receives a hit, put a mark on the coordinates of the ship
       corresponding to the grid. When one of your ships has every slot
       filled with red pegs, you must announce to your opponent that he has sunk
       your ship. In classic play, the phrase used is "You sunk my battleship!"
       '
      puts'The first player to sink all five of his opponents ships wins the game.'
    elsif input == 'q' || input == 'quit'
      puts "Bye!"
    else
      puts 'invalid answer, try again'
      start
    end
  end
end

BattleShip.new
