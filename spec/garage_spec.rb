describe Garage do

  let(:garage) { Garage.new }
  let(:van) { Van.new }
  let(:bike) { Bike.new }
  let(:docking_station) { DockingStation.new }

  it 'accepts broken bikes' do
    bike.report_broken
    docking_station.dock(bike)
    van.collect_bikes(docking_station)
    van.deliver_bikes(garage)
    expect(garage.broken_bikes).to include bike
  end

  it 'fixes bikes' do
    bike.report_broken
    garage.fix_bike(bike)
    expect(bike.working?).to be true
    expect(garage.working_bikes.first).to eq bike
  end



end
