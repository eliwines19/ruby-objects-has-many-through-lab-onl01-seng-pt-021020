class Patient

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
  end

  def new_appointment(doctor, date)
    Appointent.new(doctor, self, date)
  end

  
end
