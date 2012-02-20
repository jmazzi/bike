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
    
    it "should return bike_id as a fixnum" do
      @bikes.first[:bike_id].should be_a(Fixnum)
    end
    
    it "should return owner_id as a fixnum" do
      @bikes.first[:owner_id].should be_a(Fixnum)
    end
    
    it "should return name as a string" do
      @bikes.first[:name].should be_a(String)
    end
    
    it "should return parts as an array" do
      @bikes.first[:parts].should be_a(Array)
    end
    
    it "should return parts array with only strings" do
      @bikes.first[:parts].each {|part| part.should be_a(String) }
    end
    
  end
end
