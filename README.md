Bike
===================================

The wheels on the bicycle goes 'round and 'round.

Usage:
===================================

```ruby
  bike = Bike.new
  
  bike.list # return array of hashes, with each bike and its parts
  bike.parts(bike_id) # return hash of parts for that specific bike
  bike.owner(bike_id) # return hash with person info 
```

```ruby
  person = Person.new
  
  person.list # return array of hashes, for each person
  person.show(person_id) # return hash for this person
```