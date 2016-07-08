require 'docking_station'

describe DockingStation do

#Implicitly defined syntax:
  # it 'responds to release_bike' do
  #   expect(subject).to respond_to :release_bike
  # end

#One-liner syntax:
it { is_expected.to respond_to :release_bike }

subject do
  DockingStation.new
end

  # it 'releases a working bike' do
  #   bike = subject.release_bike
  #   expect(bike).to be_working
  # end

describe '#release_bike' do
  it 'releases a bike' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.release_bike).to eq bike
  end

end

  # #Implicitly defined syntax:
  # it 'responds to the dock bike method' do
  #    bike = DockingStation.new
  #    expect(bike).to respond_to(:dock)
  # end
  it { is_expected.to respond_to(:dock).with(1).argument}

  it 'docks something' do
     bike = Bike.new
     # We want to return the bike we dock
     expect(subject.dock(bike)).to eq bike
   end

  # it { is_expected.to respond_to(:bike) }

  describe '#dock' do

      # it 'raises an error when the docking station contains 20 bikes' do
      #   20.times { subject.dock Bike.new }
      #   # docking_station = DockingStation.new
      # # 20.times { docking_station.dock Bike.new }
      #   expect { subject.dock Bike.new }.to raise_error 'Docking station is full'
      # end


          it 'raises an error when full' do
            20.times { subject.dock Bike.new }
            expect { subject.dock Bike.new }.to raise_error 'Docking station is full'
          end


      it 'adds bikes to docking stations' do
        bike = Bike.new
        expect(subject.dock(bike)).to eq bike
      end
  end

  describe '#release_bike' do
      it 'raises an error when there are no bikes available' do
        expect { subject.release_bike }.to raise_error 'No bikes available'
      end
  end


end
