class Appointment
	@@all = []

	def self.all
		@@all
	end

	attr_reader :patient, :doctor, :date

	def initialize(patient, doctor, date)
		@patient = patient
		@doctor = doctor
		@date = date

		@@all << self
	end
end