require 'spec_helper'

describe Person do
  
  before { @person = Person.new }

  describe "#list" do
    before { @people = @person.list }
  end

end