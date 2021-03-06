require "docking_station"
describe DockingStation do
  it "responds to release_bike" do
    expect(subject).to respond_to :release_bike
  end

  it "releases the working bikes" do
    subject.dock(Bike.new())
    bike = subject.release_bike()
    expect(bike).to be_working
  end

  it "We are able to dock a bike to a station" do
    bike = double()
    subject.dock(bike)
    expect(subject.all_bikes).to include(bike)
  end

  it "The station can not release a bike if it is empty" do
    expect{subject.release_bike()}.to raise_error("It is empty")
  end

end
