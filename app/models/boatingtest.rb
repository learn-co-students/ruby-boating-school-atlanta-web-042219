class BoatingTest
	attr_accessor :student, :name, :status, :instructor
	@@all = []

	def self.all
		@@all
	end

	def initialize(student, name, status="pending", instructor)
		@student = student
		@name = name
		@status = status
		@instructor = instructor
		
		@@all << self
	end

	def self.find_by_name(test_name)
		@@all.select {|test| test.name.downcase == test_name.downcase}
	end
end
