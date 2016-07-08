require 'docking_station'

describe DockingStation do
  DEFAULT_CAPACITY = 20

  it { is_expected.to respond_to :release_bike }

  subject do
    DockingStation.new
  end

  describe '#release_bike' do
    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

  end

    it { is_expected.to respond_to(:dock).with(1).argument}

    it 'docks something' do
       bike = Bike.new
       expect(subject.dock(bike)).to eq bike
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
    end

    describe '#release_bike' do
        it 'raises an error when there are no bikes available' do
          expect { subject.release_bike }.to raise_error 'No bikes available'
        end
    end

end
