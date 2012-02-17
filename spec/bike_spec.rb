require 'spec_helper'

describe Bike do
  
  before :each do
    @bike = Bike.new
  end
  
  describe "#new" do
    it "should return a Bike object" do
      @bike.should be_an_instance_of Bike
    end
  end
  
  describe "#list" do
    
    before :each do
      @bikes = @bike.list
    end
    
    it "should return an array" do
      @bikes.should be_an(Array)
    end
    
    it "should return a hash for each bike" do
      @bikes.each do |b|
        b.should be_a(Hash)
      end
    end
    
  end
end
