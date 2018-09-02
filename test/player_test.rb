require './others/minitest_helper.rb'
require './lib/board'
require './lib/player'
require 'pry'

class PlayerTest < Minitest::Test

  def test_it_exists
    player = Player.new

    assert_instance_of Player, player
  end

  def test_type_is_computer_by_default
    player = Player.new

    assert_equal "computer", player.type
  end

  def test_player_type_can_be_human
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

  # def test_it_can_place_a_two_units_ship
  #   player = Player.new
  #
  #   player.place_ship('A1','A2')

  # assert_equal {'A1': 0, 'A2': 0}, player.board.ships.first.coordinates
  # end

  # def test_it_can_place_a_three_unit_ship
  # end


end
