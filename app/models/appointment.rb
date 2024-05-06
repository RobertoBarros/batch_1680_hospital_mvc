class Appointment
  attr_reader :patient, :doctor, :date
  attr_accessor :id

  def initialize(attributes = {})
    @id = attributes[:id]
    @patient = attributes[:patient]
    @doctor = attributes[:doctor]
    @date = attributes[:date]
  end
end
