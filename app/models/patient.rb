class Patient
  attr_reader :name, :age
  attr_accessor :room, :id

  def initialize(attributes = {})
    @name = attributes[:name]
    @age = attributes[:age]
    @id = attributes[:id]
  end

end



# roberto = Patient.new(name: 'Roberto', age: 20)
# roberto.name # => 'Roberto''
# roberto.age # => 20

# room666 = Room.new(number: 666, capacity: 20)
# roberto.room = room666
# roberto.room # => room instance

# room666.add_patient(roberto)
