require './lib/person.rb'

class Bike
  
  attr_accessor :bikes
  
  def initialize
    @bikes = [{
              :bike_id   => 1,
              :owner_id  => 1,
              :name      => 'Bianchi', 
              :parts     => ['frame', 'tires', 'saddle']
              },
             {:bike_id   => 2,
              :owner_id  => 2,
              :name      => 'Trek', 
              :parts     => ['frame', 'tires', 'saddle', 'wheels', 'handlebars']}]
  end

  def list
    bikes
  end
  
  def parts(bike_id)
    result = Array.new
    
    bikes.each do |bike|
      if bike[:bike_id] == bike_id
        result = bike[:parts]
      end
    end
    
    raise "BikeNotFound" unless result.size >=1
    result
  end
  
  def owner(bike_id)
    result = Array.new
    person = Person.new
    
    bikes.each do |bike|
      if bike[:bike_id] == bike_id
        result = person.show(bike[:owner_id])
      end
    end
    
    raise "BikeNotFound" unless result.size >=1
    result
  end
  
end
