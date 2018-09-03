require 'pry'

class Board
  attr_reader :display,
              :ships


  def initialize
    @display = [['. ', '1 ', '2 ', '3 ', '4 '],
                ['A'] + Array.new(4),
                ['B'] + Array.new(4),
                ['C'] + Array.new(4),
                ['D'] + Array.new(4)
              ]
    @ships = []
  end

  def print_board
    puts '==========='
    @display.each do |row|
      row.each do |spot|
        print spot
      end
      puts
    end
    puts '==========='
  end

  def add_ship(ship)
    @ships << ship
  end



  #   # During this phase the game will frequently need to display the current game view.
  #   # We’ll use a simple ASCII text grid of letters (to indicate rows) and numbers
  #   # (to indicate columns).
  #
    # Your board will look something like this:
    #  The Game Grid
    #
  #   ===========
  #   . 1 2 3 4
  #   A
  #   B
  #   C
  #   D
  #   ===========
  # # end
  #
  # def display_the_map
  #   # Display a map using the format described above. On the map,
  #   # include information about the current player’s previous shots.
  #   # For every shot that landed a hit, mark that position with an H,
  #   # and for every shot that missed, mark that position with an M.
  #   #
  #   # So, on the first turn, a player’s grid will look empty.
  #   # But as the game progresses, it will gradually
  #   # fill up with misses and hits:
  #   #
  #   # ===========
  #   # . 1 2 3 4
  #   # A H M
  #   # B H   M
  #   # C   H M
  #   # D
  #   # ===========
  # end
  #

  #

end
