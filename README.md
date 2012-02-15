Bike
===================================

The wheels on the bicycle goes 'round and 'round.

Usage:
-----------------------------------

Create a new Bike instance:

```ruby
  bike = Bike.new
```

Return a list of bikes as an array of hashes:

```ruby
  pp bike.list
  
  [{ :bike_id   => 1,
     :owner_id  => 1,
     :name      => 'Bianchi', 
     :parts     => ['frame', 'tires', 'saddle'] },
   { :bike_id   => 2,
     :owner_id  => 2,
     :name      => 'Trek', 
     :parts     => ['frame', 'tires', 'saddle'] }
  ]
```

Return an array of the parts of a specific bike:

```ruby
  pp bike.parts(bike_id)
  
  ['frame', 'tires', 'saddle']
```

Return a hash of bike owner details:

```ruby
  pp bike.owner(bike_id)
  
  { 
    :id     => 1
    :name   => 'John Doe'
  }
```
  

Create a new Person instance

```ruby
  person = Person.new
```

Return array of hashes for all people:

```ruby
  pp person.list
  
  [{ 
    :id     => 1
    :name   => 'John Doe'
  },
  { 
    :id     => 2
    :name   => 'Jane Doe'
  }]
```

Return hash with details of that person:

```ruby
  pp person.show(person_id)
  
  { 
    :id     => 1
    :name   => 'John Doe',
  }
```