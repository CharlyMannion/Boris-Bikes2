require 'docking_station'

describe DockingStation do
  it 'has a bike method' do
    subject.respond_to? :bike
  end
  describe '#release_bike' do
    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end
    it 'raises an error when no bikes available' do
      expect { subject.release_bike}.to raise_error "No bikes available"
    end
  end
end
