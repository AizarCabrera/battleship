require './others/minitest_helper.rb'
require './lib/player'
require 'pry'

class PlayerTest < Minitest::Test

  def test_it_exists
    player = Player.new

    assert_instance_of Player, player
  end

end
