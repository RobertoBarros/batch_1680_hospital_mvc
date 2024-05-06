require_relative '../views/appointments_view'

class AppointmentsController

  def initialize(appointment_repository, patient_repository, doctor_repository)
    @appointment_repository = appointment_repository
    @patient_repository = patient_repository
    @doctor_repository = doctor_repository

    @view = AppointmentsView.new
    @patients_view = PatientsView.new
    @doctors_view = DoctorsView.new
  end

  def create
    # Perguntar qual o patient
    patients = @patient_repository.all
    @patients_view.list(patients)
    index = @patients_view.ask_index
    patient = patients[index]

    # Perguntar qual o doctor
    doctors = @doctor_repository.all
    @doctors_view.list(doctors)
    index = @doctors_view.ask_index
    doctor = doctors[index]

    # Perguntar qual a data
    date = @view.ask_date

    # Instanciar um novo appointment
    appointment = Appointment.new(date:, patient:, doctor:)

    # Adicionar o appointment ao repository
    @appointment_repository.add(appointment)

  end

  def list
    # Pegar todos os appointments do repository
    appointments = @appointment_repository.all

    # Listar na view
    @view.list(appointments)
  end

end
