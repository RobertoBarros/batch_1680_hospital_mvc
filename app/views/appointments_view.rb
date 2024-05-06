class AppointmentsView

  def ask_date
    puts "Enter appointment date (yyyy-mm-dd):"
    gets.chomp
  end

  def list(appointments)
    puts 'Appointments List'
    puts '-' * 30

    appointments.each_with_index do |appointment, index|
      puts "#{index + 1} - #{appointment.date} | doctor: #{appointment.doctor.name} | patient: #{appointment.patient.name}"
    end

    puts '-' * 30
  end
end
