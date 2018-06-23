class Robot
  attr_reader :x, :y, :direction

  def initialize(position, direction)
    @position  = position
    @direction = direction
  end
end
