require_relative './east'
require_relative './west'

module Directions
  class South
    def move(current_position)
      x = current_position[0]
      y = current_position[1]
      y -= 1 if y > 0

      [x, y]
    end

    def turn_left
      East.new
    end

    def turn_right
      West.new
    end

    def to_s
      'SOUTH'
    end
  end
end
