require 'docking_station'

describe DockingStation do
  DEFAULT_CAPACITY = 20

  subject(:docking_station) { DockingStation.new }
  subject(:bike) {Bike.new}

  describe '#initialize' do
    it 'sets the capacity of docking_station to a default value' do
      expect(DEFAULT_CAPACITY).to eq DockingStation::DEFAULT_CAPACITY
    end

    it 'should allow the user to determine the capacity themselves' do
      docking_station = DockingStation.new(3)
      3.times{docking_station.dock Bike.new}
      expect{ docking_station.dock Bike.new }.to raise_error('Docking station full')
    end
  end


  describe '#release_bike' do

    it 'releases working bikes' do
      docking_station.dock(bike)
      bike = docking_station.release_bike
      expect(bike).to be_working
    end

    it 'should not release broken bikes' do
      bike.report_broken
      docking_station.dock(bike)
      expect{docking_station.release_bike}.to raise_error 'No bikes available'
    end

    it 'should raise an error when there are no bikes available' do
      expect { docking_station.release_bike }.to raise_error 'No bikes available'
    end

  end

  describe '#dock' do

    it 'should raise an error when full' do
    20.times{docking_station.dock(Bike.new)}
      expect { docking_station.dock Bike.new }.to raise_error
    end


    it 'should add bikes to docking stations' do
      expect(docking_station.dock(bike)).to eq bike
    end

    it 'should dock working bikes' do
        expect(docking_station.dock(bike)).to eq bike
    end

    it 'should dock broken bikes' do
        bike.report_broken
        expect(docking_station.dock(bike)).to eq bike
    end
  end
end
