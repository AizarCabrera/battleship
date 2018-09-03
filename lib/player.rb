require './lib/board'
require 'pry'

class Player
  attr_reader :board,
              :type

  def initialize(type = "computer")

    @board = Board.new
    @type  = type

  end

  def place_ship(*coordinates)
    ship = Ship.new(coordinates)
    @board.add_ship(ship)
  end


  # 
  # def get_random_horizontal_coordinates
  #   letter = ('A'..'D').to_a.sample #get a random letter A-D
  #   number = rand(1..3)#get a random number 1-3
  #   ["#{letter}#{number}", "#{letter}#{number + 1}"]
  # end






  # def get_random_vertical_coordinates
  #   letter = #get a random letter A-C
  #   number = #get a random number 1-4
  #   ["#{letter}#{number}", "#{letter + 1}#{number}"]
  # end
  #
  # def place_random_ships
  #   random_coordinates =
  #   place_ship(random_coordinates)
  # end
  #
  # def validate_coordinates
  #   # Ships cannot wrap around the board
  #   # Ships cannot overlap
  #   # Ships can be laid either horizontally or vertically
  #   # Coordinates must correspond to the first and last units of the ship.
  #   # (IE: You can’t place a two unit ship at “A1 A3”)
  #
  #   # Player ship positions should be validated according
  #   # to the same rules listed above.
  #   # If a user enters an invalid ship coordinate, the game should
  #   # display a message explaining which of the rules their choice violated,
  #   # then ask them to re-enter all coordinates for that specific ship.
  #   # (Any previous ship placements should still be retained)
  #   #
  #   # Once all ships have been placed, the user can enter the main game flow phase
  # end
  #
  # def computer_shot_sequence
  #   # # Once the player has ended their turn, the AI will fire.
  #   # This follows a similar process, except that instead of prompting
  #   # for a target, the computer will simply select one at random from
  #   # the positions that it has not yet fired at
  #   # (again, not a very sophisticated AI, but good enough for now).
  #   #
  #   # Once the computer has selected, display a message to the human
  #   # player indicating which position the computer fired at and
  #   # whether it was a miss or a hit.
  #   #
  #   # Finally, give the player an overview of the computer’s progress
  #   # so far by displaying the game grid of the player’s ships
  #   # with Hs over any positions the computer has hit and Ms over
  #   # any positions the computer has fired at but missed.
  #   # #
  #   # Then, return to the Player Shot Sequence.
  # end
  #
  # def player_shot_sequence
  #   # You should validate that the player’s choice is a valid coordinate
  #   # # on the board, and that they have not already fired on that position
  #   # # before. (If they have, display a message explaining these constraints)
  # end


end
