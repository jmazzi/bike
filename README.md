Bike
===================================

The wheels on the bicycle goes 'round and 'round.

Usage:
===================================

Create a new Bike instance:

```ruby
  bike = Bike.new
```

Return a list of bikes as an array of hashes:

```ruby
  pp bike.list
```

Return a hash of the parts of a specific bike:

```ruby
  pp bike.parts(bike_id)
```

Return a hash of bike owner details:

```ruby
  pp bike.owner(bike_id)
```

Create a new Person instance

```ruby
  person = Person.new
```

Return array of hashes for each person:

```ruby
  pp person.list
```

Return hash with person details for specific person:

```ruby
  pp person.show(person_id)
```