require 'docking_station'
require 'bike'

describe DockingStation do
  it 'responds to release_bike method' do
    expect(subject).to respond_to(:release_bike)
  end
  # it 'releases working bikes' do
  #   # station = DockingStation.new
  #   # bike = station.release_bike
  #   bike = subject.release_bike
  #   expect(bike.working?).to eq true
  # end

  it 'releases a bike' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.release_bike).to eq bike
  end

  it 'raises an error as cannot release a broken bike' do
    bike = Bike.new
    bike.report_broken
    subject.dock(bike)
    expect { subject.release_bike }.to raise_error("Bike broken, cannot release bike")
  end


  it 'raises an error when no bikes are available' do
    expect { subject.release_bike }.to raise_error("No bikes available")
  end

  it 'adds bike to dock' do
    expect(subject).to respond_to(:dock).with(1).argument
  end

  it 'docks a bike' do
    bike = Bike.new
    expect(subject.bikes.count).to eq 0
    subject.dock(bike)
    expect(subject.bikes.count).to eq 1
  end

  # ..... this test has been removed because it is no longer relevant
  #  as now the new instance of docking station can hold upto 20 bikes.
  # it 'can show a bike that is docked' do
  #   bike = Bike.new
  #   subject.dock(bike)
  #   expect(subject.bike).to eq bike
  # end
  
  # it 'raises an error when full' do
  #   bike = Bike.new
  #   subject.capacity.times { subject.dock bike }
#   #   expect {subject.dock(bike)}.to raise_error("Docking station full")
#   # end

#   it 'has variable capacity' do
#     bike = Bike.new
#     docking_station = DockingStation.new(50)
#     50.times { docking_station.dock(bike) }
#     expect{ docking_station.dock(bike)}.to raise_error("Docking station full")
#   end


  subject { DockingStation.new }
  let(:bike) { Bike.new }
  it 'defaults capacity' do
    described_class::DEFAULT_CAPACITY.times do
      subject.dock(bike)
    end
    expect{ subject.dock(bike) }.to raise_error 'Docking station full'
  end
end