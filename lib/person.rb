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
    result = Hash.new
    
    people.each do |person|
      if person[:id] == person_id
        result = {:id => person[:id], :name => person[:name]}
      end
    end
    
    raise "PersonNotFound" unless result.length >=1
    result
  end
  
end