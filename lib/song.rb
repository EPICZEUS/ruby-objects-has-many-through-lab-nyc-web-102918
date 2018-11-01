class Song
	@@all = []

	def self.all
		@@all
	end

	attr_accessor :artist
	attr_reader :name, :genre

	def initialize(name, artist, genre)
		@name = name
		@artist = artist
		@genre = genre

		@@all << self
	end
end
