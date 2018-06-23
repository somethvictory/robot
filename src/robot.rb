require_relative './directions/east'
require_relative './directions/north'
require_relative './directions/south'
require_relative './directions/west'

class Robot
  EAST  = Directions::East.new
  NORTH = Directions::North.new
  SOUTH = Directions::South.new
  WEST  = Directions::West.new

  attr_reader :position, :direction

  def initialize(position, direction)
    @position  = position_from(position)
    @direction = direction_from(direction)
  end

  def operate(command)
    case command
    when 'MOVE'
      @position  = @direction.move(@position)
    when 'LEFT'
      @direction = @direction.turn_left
    when 'RIGHT'
      @direction = @direction.turn_right
    when 'REPORT'
      puts report
    end
  end

  def report
    "Output: #{@position.first},#{@position.last},#{@direction.to_s}"
  end

  private
  def position_from(position)
    if valid_position?(position)
      position
    else
      # default position
      [0,0]
    end
  end

  def direction_from(direction)
    case direction
    when 'NORTH'
      NORTH
    when 'SOUTH'
      SOUTH
    when 'WEST'
      WEST
    else
      # default direction
      EAST
    end
  end

  def valid_position?(position)
    position.is_a?(Array) && (position.size == 2) && position.all? { |e| e.is_a?(Integer) && e.between?(0,4) }
  end
end
