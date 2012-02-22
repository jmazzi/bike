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
    
    it "should return at least one part" do
      @bikes.first[:parts].should have_at_least(1).items
    end
    
    it "should return parts array containing strings" do
      @bikes.first[:parts].each {|part| part.should be_a(String) }
    end
    
  end
  
  describe "#parts" do
        
    it "should raise ArgumentError if there are no arguments" do
      expect {@bike.parts}.to raise_error(ArgumentError)
    end
    
    it "should only expect a singular bike_id as an argument" do
      @bike.parts(1).should_not raise_error(ArgumentError)
    end
    
    it "should return an array of bike parts for requested bike_id" do
      @bike.parts(1).should be_a(Array)
    end
    
    it "should return an array of strings for each bike part" do
      @bike.parts(1).each {|part| part.should be_a(String) } 
    end
    
    it "should return at least three bike parts" do
      @bike.parts(1).should have_at_least(3).items
    end
    
  end
  
  describe "#owner" do
    
    it "should raise ArgumentError if there are no arguments" do
      expect {@bike.owner}.to raise_error(ArgumentError)
    end
    
    
  end
  
end
