require 'spec_helper'

RSpec.describe Directions::North do
  it 'increases y', '#move' do
    expect(subject.move([0,0])).to eq [0,1]
  end

  it 'does not increase y when y is equal to 4', '#move' do
    expect(subject.move([0,4])).to eq [0,4]
  end

  it 'does not increase y when y is greater than 4', '#move' do
    expect(subject.move([1,5])).to eq [1,5]
  end

  it 'faces west when turning left', '#turn_left' do
    expect(subject.turn_left).to be_an_instance_of Directions::West
  end

  it 'faces east when turning right', '#turn_right' do
    expect(subject.turn_right).to be_an_instance_of Directions::East
  end
end
