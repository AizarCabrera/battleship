require './others/minitest_helper.rb'
require './lib/board'
require './lib/player'
require 'pry'

class PlayerTest < Minitest::Test

  def test_it_exists
    player = Player.new

    assert_instance_of Player, player
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
end
