require 'pry'
require './src/robot'

robot = nil

File.readlines('input.txt').each do |command|
  command = command.strip
  if command.include?('PLACE')
    x, y, direction = command.split(',')
    x = x.split().last

    robot = Robot.new([x.to_i, y.to_i], direction)
  else
    robot.operate(command) if robot
  end
end
