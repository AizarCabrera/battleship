require './lib/board'
require 'pry'

class Player
  attr_reader :board,
              :type

  def initialize(type = "computer")

    @board = Board.new
    @type  = type

  end

  def place_ship(ship_1, ship_2)

    # the  player should place their ships.
  end


    def place_random_ships
      # When the player decides to start a game,
      # the computer player should place their ships.
      # The baseline computer should simply use random placements,
      # but still obey these constraints:
    end

  def validate_coordinates
    # Ships cannot wrap around the board
    # Ships cannot overlap
    # Ships can be laid either horizontally or vertically
    # Coordinates must correspond to the first and last units of the ship.
    # (IE: You can’t place a two unit ship at “A1 A3”)

    # Player ship positions should be validated according
    # to the same rules listed above.
    # If a user enters an invalid ship coordinate, the game should
    # display a message explaining which of the rules their choice violated,
    # then ask them to re-enter all coordinates for that specific ship.
    # (Any previous ship placements should still be retained)
    #
    # Once all ships have been placed, the user can enter the main game flow phase
  end

  def rendering

    # During this phase the game will frequently need to display the current game view.
    # We’ll use a simple ASCII text grid of letters (to indicate rows) and numbers
    # (to indicate columns).

    # Your board will look something like this:
    #  The Game Grid

    # ===========
    # . 1 2 3 4
    # A
    # B
    # C
    # D
    # ===========
  end

  def display_the_map
    # Display a map using the format described above. On the map,
    # include information about the current player’s previous shots.
    # For every shot that landed a hit, mark that position with an H,
    # and for every shot that missed, mark that position with an M.
    #
    # So, on the first turn, a player’s grid will look empty.
    # But as the game progresses, it will gradually
    # fill up with misses and hits:
    #
    # ===========
    # . 1 2 3 4
    # A H M
    # B H   M
    # C   H M
    # D
    # ===========
  end

  def prompting_player_for_a_shot
    # At the bottom of the grid display, the board should include a message
    #  prompting the player to enter a coordinate to fire on.
    #  This should follow the same pattern as when placing ships – a
    #  letter/number combination to indicate the row and column to hit.
  end

  def display_shot_information
    # After the player has entered their target, display a short message
    # indicating whether it was a hit or a miss.
    # Additionally, re-render the board showing the new shot.
    #
    # Finally, prompt the player to end their turn by pressing ENTER.
  end

  def computer_shot_sequence

    # # Once the player has ended their turn, the AI will fire.
    # This follows a similar process, except that instead of prompting
    # for a target, the computer will simply select one at random from
    # the positions that it has not yet fired at
    # (again, not a very sophisticated AI, but good enough for now).
    #
    # Once the computer has selected, display a message to the human
    # player indicating which position the computer fired at and
    # whether it was a miss or a hit.
    #
    # Finally, give the player an overview of the computer’s progress
    # so far by displaying the game grid of the player’s ships
    # with Hs over any positions the computer has hit and Ms over
    # any positions the computer has fired at but missed.
    # #
    # Then, return to the Player Shot Sequence.
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
