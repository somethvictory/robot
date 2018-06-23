require_relative './north'
require_relative './south'

module Directions
  class East
    def move(current_position)
      x = current_position[0]
      y = current_position[1]
      x += 1 if x < 4

      [x, y]
    end

    def turn_left
      North.new
    end

    def turn_right
      South.new
    end

    def to_s
      'EAST'
    end
  end
end
