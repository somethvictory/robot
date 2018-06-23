require_relative './east'
require_relative './west'

module Directions
  class North
    def move(current_position)
      x = current_position[0]
      y = current_position[0]
      y += 1 if y < 4

      [x, y]
    end

    def turn_left
      West.new
    end

    def turn_right
      East.new
    end

    def to_s
      'NORTH'
    end
  end
end
