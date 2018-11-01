class Doctor
	@@all = []

	def self.all
		@@all
	end

	attr_reader :name

	def initialize(name)
		@name = name

		@@all << self
	end

	def new_appointment(patient, date)
		Appointment.new(patient, self, date)
	end

	def appointments
		Appointment.all.select{|app| app.doctor == self }
	end

	def patients
		appointments.map{|app| app.patient }
	end
end
