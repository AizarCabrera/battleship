require './lib/board'
require 'pry'

class Player
  attr_reader :board

  def initialize

    @board = Board.new


  end

  def entering_coordinates
    # Then they enter coordinates like this:
    # A1 A2
    # Which places the two element ship on squares A1 and A2.
    # then it asks for the coordinates for the three-unit ship.
  end

  def player_shot_sequence
    # You should validate that the player’s choice is a valid coordinate
    # # on the board, and that they have not already fired on that position
    # # before. (If they have, display a message explaining these constraints)
  end

end
