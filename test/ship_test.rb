require './others/minitest_helper.rb'
require './lib/ship'


class ShipTest < Minitest::Test

  def test_it_exists
    ship = Ship.new

    assert_instance_of Ship, ship
  end

  def test_it_has_coordinates
    ship = Ship.new
    coordinates = Hash.new


    coordinates = {'A1': 0, 'A2': 0}
    assert_instance_of Hash, ship.coordinates
    assert_equal coordinates, ship.coordinates
  end
end
