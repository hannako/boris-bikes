require 'docking_station'

describe DockingStation do
  DEFAULT_CAPACITY = 20


  it { is_expected.to respond_to :release_bike }
  it { is_expected.to respond_to(:dock).with(1).argument}

  subject do
    DockingStation.new
  end

  describe '#initialize' do
    it 'sets the capacity of docking_station to a default value' do
      expect(DEFAULT_CAPACITY).to eq DockingStation::DEFAULT_CAPACITY
    end

    it 'allows the user to determine the capacity themselves' do
      docking_station = DockingStation.new(10)
      10.times { docking_station.dock Bike.new }
      expect{ docking_station.dock Bike.new }.to raise_error 'Docking station full'
    end
  end


  describe '#release_bike' do

    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

    it 'raises an error when there are no bikes available' do
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end

  end

  describe '#dock' do

    it 'raises an error when full' do
      DEFAULT_CAPACITY.times {subject.dock Bike.new}
      expect { subject.dock Bike.new }.to raise_error 'Docking station is full'
    end

    it 'adds bikes to docking stations' do
      bike = Bike.new
      expect(subject.dock(bike)).to eq bike
    end

    it 'docks something' do
        bike = Bike.new
        expect(subject.dock(bike)).to eq bike
    end

  end
end
