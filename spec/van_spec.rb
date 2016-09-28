describe Van do

  let(:van) { Van.new }
  let(:working_bike) {double :bike, working?: true}
  let(:broken_bike) {double :bike, working?: false}
  let(:docking_station) { DockingStation.new }
  let(:docking_station2) { DockingStation.new }
  let(:garage) { Garage.new  }



  it 'throws an error if the van is full' do
    4.times{ docking_station.dock(broken_bike) }
    4.times{ docking_station2.dock(broken_bike) }
    van.collect_bikes(docking_station)
    expect{ van.collect_bikes(docking_station2) }.to raise_error "The van is full"
  end

  it 'delivers bikes to garages' do
    van.collect_bikes(docking_station)
    van.deliver_bikes(garage)
    expect(van.bikes).to be_empty
  end

  # it 'collects bikes from garages and delivers them to dockinstations' do
  #   van.collect_bikes(docking_station)
  #   van.deliver_bikes
  # end


end
