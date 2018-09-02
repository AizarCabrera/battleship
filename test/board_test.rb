require './others/minitest_helper.rb'
require './lib/board'
require 'pry'

class BoardTest < Minitest::Test

  def test_it_exists
    board = Board.new

    assert_instance_of Board, board
  end

  def test_board_its_empty
    board = Board.new
    expected =[[],[],[],[]]
    assert_equal expected, board.display
  end

end
