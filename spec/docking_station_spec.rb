require 'docking_station'

describe DockingStation do
  let(:docking_station) { DockingStation.new }
  let(:bike) { double :bike, working?: true }

  it 'releases a bike' do
    docking_station.dock(bike)
    bike = docking_station.release_bike
    expect(bike.working?).to be true
  end

  it 'releases a working bike' do
    docking_station.dock(bike)
    docking_station.release_bike
    expect(bike.working?).to be true
  end

  it 'allows bikes to be docked' do
    docking_station.dock(bike)
    expect(docking_station.working_bikes.first).to eq bike
  end

  it 'throws an error if user tries to release bike and none are available' do
    docking_station.dock(bike)
    docking_station.release_bike
    expect{ docking_station.release_bike }.to raise_error 'No bikes available'

  end

  it 'throws an error if a user tries to dock a bike when the station is full' do
    DockingStation::DEFAULT_CAPACITY.times{ docking_station.dock(bike) }
    expect{ docking_station.dock(bike) }.to raise_error 'Docking station full'
  end

  it 'has a default capacity' do
    station = DockingStation.new(50)
    expect(station.capacity).to eq 50
  end

  it 'only releases bikes which are not broken' do
    allow(bike).to receive(:working?).and_return(false)
    docking_station.dock(bike)
    expect{ docking_station.release_bike }.to raise_error "No bikes available"
  end

end
