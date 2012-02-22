require 'spec_helper'

describe Person do
  
  before { @person = Person.new }

  describe "#list" do
    before { @person = @person.list }
    
    it "should return an array" do
      @person.should be_an(Array)
    end
    
    it "should return at least 1 person" do
      @person.should have_at_least(1).person
    end
    
    it "should return a hash of a person" do
      @person.first.should be_a(Hash)
    end
    
    it "should return person id as a fixnum" do
      @person.first[:id].should be_a(Fixnum)
    end
    
    it "should return person name as a string" do
      @person.first[:name].should be_a(String)
    end
    
  end
  
  describe "#show" do
    
    it "should raise ArgumentError if there are no arguments" do
      expect {@person.show}.to raise_error(ArgumentError)
    end
    
    it "should return a hash" do
      @person.show(1).should be_a(Hash)
    end
    
    it "should return id as a fixnum" do
      @person.show(1)[:id].should be_a(Fixnum)
    end
    
    it "should return name as a string" do
      @person.show(1)[:name].should be_a(String)
    end
    
  end
  
end