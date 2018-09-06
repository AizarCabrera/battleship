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

  def get_random_horizontal_coordinates
    letter = ('A'..'D').to_a.sample
      num = rand(1..3)
    ["#{letter}#{num}", "#{letter}#{num + 1}"]
  end

  def get_random_vertical_coordinates
    letter = ('A'..'C').to_a.sample
      num = rand(1..4)
    ["#{letter}#{num}", "#{letter.next}#{num}"]
  end

  def get_random_horizontal_coordinates_3_unit_ship
    letter = ('A'..'D').to_a.sample
      num = rand(1..3)
    ["#{letter}#{num}", "#{letter}#{num + 1}", "#{letter}#{num + 2}"]
  end

  def get_random_vertical_coordinates_3_unit_ship
    letter = ('A'..'C').to_a.sample
      num = rand(1..4)
    ["#{letter}#{num}","#{letter.next}#{num}","#{letter.next.next}#{num}"]
  end

  def place_random_ships
    random_coordinates =
    place_ship(random_coordinates)
  end

end
