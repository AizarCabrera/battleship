require 'pry'

class Ship
 attr_reader :coordinates

  def initialize
    @coordinates = {'A1'=> 0, 'A2'=> 0}
  end

end
