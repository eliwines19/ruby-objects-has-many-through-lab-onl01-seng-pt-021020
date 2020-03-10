class Doctor
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def appointments
    Appointment.all.select {|a| a.appointment == self}
  end

  def new_appointment(date, patient)
    Appointment(date, self, patient)
  end

  def patients
    Patients.all.select {|p| p.Doctor == self}.map {|m| m.appointments}
  end
end
