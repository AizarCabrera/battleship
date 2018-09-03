require './others/minitest_helper.rb'
require './lib/ship'
require './lib/board'
require './lib/player'
require 'pry'

class PlayerTest < Minitest::Test

  def test_it_exists
    player = Player.new

    assert_instance_of Player, player
  end

  def test_the_player_type_is_computer_by_default
    player = Player.new

    assert_equal "computer", player.type
  end

  def test_the_player_type_can_be_human
    player = Player.new("human")

    assert_equal "human", player.type
  end

  def test_player_has_an_empty_board
    player = Player.new

    empty_board =[['. ', '1 ', '2 ', '3 ', '4 '],
                ['A'] + Array.new(4),
                ['B'] + Array.new(4),
                ['C'] + Array.new(4),
                ['D'] + Array.new(4)
              ]

    assert_instance_of Board, player.board
    assert_equal empty_board, player.board.display
  end

  def test_it_can_place_a_two_units_ship
    player = Player.new
    coord_1 = 'A1'
    coord_2 = 'A2'

    player.place_ship(coord_1, coord_2)

    coordinates = ['A1', 'A2']

    assert_equal coordinates, player.board.ships.first.coordinates
  end

  def test_it_can_place_a_three_unit_ship
    player = Player.new
    coord_1 = 'A1'
    coord_2 = 'A2'
    coord_3 = 'A3'

    player.place_ship(coord_1, coord_2, coord_3)

    coordinates = ['A1', 'A2','A3']

    assert_equal coordinates, player.board.ships.first.coordinates
  end

  def test_it_get_random_horizontal_coordinates_for_2_unit_ship
    player = Player.new

    random = player.get_random_horizontal_coordinates
    refute_equal random, player.get_random_horizontal_coordinates
  end


  def test_it_get_random_vertical_coordinates_for_2_unit_ship
    player = Player.new

    random = player.get_random_vertical_coordinates
    refute_equal random, player.get_random_vertical_coordinates
  end

  def test_it_get_random_horizontal_coordinates_for_3_unit_ship
    player = Player.new

    random = player.get_random_horizontal_coordinates_3_unit_ship
    refute_equal random, player.get_random_horizontal_coordinates_3_unit_ship
  end

  def test_it_get_random_vertical_coordinates_for_3_unit_ship
    player = Player.new

    random = player.get_random_vertical_coordinates_3_unit_ship
    refute_equal random, player.get_random_vertical_coordinates_3_unit_ship
  end

  def test_computer_can_place_one_random_ship
    player = Player.new

    player.place_random_ships

    # expect there to be a ship
    assert_instance_of Ship, player.board.ships.first
  end
  
  # def test_computer_places_random_ships
  #   # watch out for overlapping
  #   # places 2 unit ship and 3 unit ship randomly
  # end

end
