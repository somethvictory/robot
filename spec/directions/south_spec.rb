require 'spec_helper'

RSpec.describe Directions::South do
  it 'decreases y', '#move' do
    expect(subject.move([1,1])).to eq [1,0]
  end

  it 'does not decrease y when y is equal to 0', '#move' do
    expect(subject.move([1,0])).to eq [1,0]
  end

  it 'does not increase y when y is less than 0', '#move' do
    expect(subject.move([1,-1])).to eq [1,-1]
  end

  it 'faces east when turning left', '#turn_left' do
    expect(subject.turn_left).to be_an_instance_of Directions::East
  end

  it 'faces west when turning right', '#turn_right' do
    expect(subject.turn_right).to be_an_instance_of Directions::West
  end
end
