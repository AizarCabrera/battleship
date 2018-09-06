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
end
