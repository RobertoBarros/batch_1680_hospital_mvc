class Room
  attr_reader :number, :capacity, :patients
  attr_accessor :id

  def initialize(attributes = {})
    @id = attributes[:id]
    @number = attributes[:number]
    @capacity = attributes[:capacity] || 0
    @patients = []
  end

  def add_patient(patient)
    @patients << patient
    patient.room = self
  end

end

# room1 = Room.new(number: 322, capacity: 30)
