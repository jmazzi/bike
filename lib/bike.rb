class Bike
  
  attr_accessor :bikes
  
  def initialize
    #gah need to refactor how this is organized later
    @bikes = [{:bike_id   => 1,
              :owner_id  => 1,
              :name      => 'Bianchi', 
              :parts     => ['frame', 'tires', 'saddle']
              },
             {:bike_id   => 2,
              :owner_id  => 2,
              :name      => 'Trek', 
              :parts     => ['frame', 'tires', 'saddle', 'rims', 'handlebars']}]
  end

  def list
    bikes
  end
  
  def parts(bike_id)
    #this is bloated crap because of how @bikes is organized
    @bikes.each do |bike|
      return bike[:parts] if bike[:bike_id] == bike_id
    end
  end
  
end
