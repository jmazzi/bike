class Bike
  
  attr_accessor :bikes
  
  def initialize
    @bikes = [{:bike_id   => 1,
              :owner_id  => 1,
              :name      => 'Bianchi', 
              :parts     => ['frame', 'tires', 'saddle']},
             {:bike_id   => 2,
              :owner_id  => 2,
              :name      => 'Trek', 
              :parts     => ['frame', 'tires', 'saddle']}]
  end

  def list
    bikes
  end
  
end
