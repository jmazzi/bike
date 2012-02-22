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
  
  def list
    people
  end
  
  def show(person_id)
    people.each do |person|
      return person if person[:id] == person_id
    end
  end
  
end