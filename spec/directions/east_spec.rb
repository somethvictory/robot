require 'spec_helper'

RSpec.describe Directions::East do
  it 'increases x', '#move' do
    expect(subject.move([0,0])).to eq [1,0]
  end

  it 'does not increase x when x is equal to 4', '#move' do
    expect(subject.move([4,0])).to eq [4,0]
  end

  it 'does not increase x when x is greater than 4', '#move' do
    expect(subject.move([5,0])).to eq [5,0]
  end

  it 'faces north when turning left', '#turn_left' do
    expect(subject.turn_left).to be_an_instance_of Directions::North
  end

  it 'faces south when turning right', '#turn_right' do
    expect(subject.turn_right).to be_an_instance_of Directions::South
  end
end
