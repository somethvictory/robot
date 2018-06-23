require './src/robot'
require 'pry'

robot = nil

File.readlines('input.txt').each do |command|
  command = command.strip
  if command.include?('PLACE')
    x, y, direction = command.split(',')
    x = x.split().last
    robot = Robot.new([x.to_i, y.to_i], direction)
    binding.pry
  else

  end
end
