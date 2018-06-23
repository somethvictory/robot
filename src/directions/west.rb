require_relative './north'
require_relative './south'

module Directions
  class West
    def move(current_position)
      x = current_position[0]
      y = current_position[1]
      x -= 1 if x > 0

      [x, y]
    end

    def turn_left
      South.new
    end

    def turn_right
      North.new
    end

    def to_s
      'WEST'
    end
  end
end
