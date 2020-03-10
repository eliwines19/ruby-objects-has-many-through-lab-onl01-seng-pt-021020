class Appointment 
  @@all = []
  attr_accessor :date, :patient, :doctor 

  def initiaize(date, patient, doctor)
    @date = date 
    @patient = patient 
    @doctor = doctor
    @@all = [] 
  end

  def self.all 
    @@all 
  end
  
end