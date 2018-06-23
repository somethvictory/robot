require 'spec_helper'

RSpec.describe Directions::West do
  it 'decreases x', '#move' do
    expect(subject.move([1,1])).to eq [0,1]
  end

  it 'does not decrease x when x is equal to 0', '#move' do
    expect(subject.move([0,1])).to eq [0,1]
  end

  it 'does not increase x when x is less than 0', '#move' do
    expect(subject.move([-1,1])).to eq [-1,1]
  end

  it 'faces south when turning left', '#turn_left' do
    expect(subject.turn_left).to be_an_instance_of Directions::South
  end

  it 'faces north when turning right', '#turn_right' do
    expect(subject.turn_right).to be_an_instance_of Directions::North
  end
end
