require 'spec_helper'

describe Bike do
  
  before { @bike = Bike.new }
  
  describe "#list" do
    
    before { @bikes = @bike.list }
    
    it "should return an array" do
      @bikes.should be_an(Array)
    end
    
    it "should return 2 bikes" do
      @bikes.should have(2).bikes
    end
    
    it "should return a hash of a bike" do
      @bikes.first.should be_a(Hash)
    end
    
  end
end
