class Person
  
  attr_accessor :people
  
  def initialize
    @people = [{
                :id     => 1,
                :name   => "John Doe",
              },
              {
                :id     => 2,
                :name   => "Jane Doe"
              }]
  end
  
end