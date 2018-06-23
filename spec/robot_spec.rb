require 'spec_helper'

RSpec.describe Robot do
  let(:subject) { Robot.new([0,0], 'EAST') }

  it 'sets default position if input position is invalid', '#position' do
    robot = Robot.new(['a', 'b'], 'NORTH')
    expect(robot.position).to eq [0,0]
  end

  it 'sets default direction if input direction is invalid', '#direction' do
    robot = Robot.new([1, 1], '')
    expect(robot.direction).to be_an_instance_of Directions::East
  end

  it "updates robot's position when receiving command Move", '#operate' do
    subject.operate('MOVE')
    expect(subject.position).to eq [1,0]
  end

  it "sets robot's direction to the North when receiveing command LEFT", '#operate' do
    subject.operate('LEFT')
    expect(subject.direction).to be_an_instance_of Directions::North
  end

  it "sets robot's direction to the North when receiving command RIGHT", '#operate' do
    subject.operate('RIGHT')
    expect(subject.direction).to be_an_instance_of Directions::South
  end

  it "produces report when receiving command REPORT", '#operate' do
    expect(subject).to receive(:report)
    subject.operate('REPORT')
  end

  it "returns robot information", '#report' do
    expect(subject.report).to eq "Output: #{subject.position.first},#{subject.position.last},#{subject.direction.to_s}"
  end
end
