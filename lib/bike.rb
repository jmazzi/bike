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
    @bikes.each do |bike|
      return bike[:parts] if bike[:bike_id] == bike_id
    end
  end
  
  def owner(bike_id)
    #person = Person.new
    
    @bikes.each do |bike|
      
    end
  end
  
end
