require 'pry'

class Ship
 attr_reader :coordinates

  def initialize(coordinates)
    @coordinates = coordinates # ['A1', 'A2', 'A3']
  end

end
