class Student
	attr_accessor :first_name
	@@all = []

	def self.all
		@@all
	end

	def initialize(first_name)
		@first_name = first_name
		@@all << self
	end

	def add_boating_test(test_name, test_status="pending", instructor)
		BoatingTest.new(self, test_name, test_status, instructor)
	end

	def tests
		BoatingTest.all.select {|test| test.student == self}
	end

	def grade_percentage
		pass = 0.0
		total = 0.0
		self.tests.each {|test|
			pass += 1 if test.status == "passed"
			total += 1 if test.status == "passed" || test.status == "failed"
		}
		return (pass/total*100.0).round(2).to_s+"%" if pass > 0
		"No tests taken yet."
	end

	def self.find_student(name)
		@@all.find {|student| student.first_name.downcase == name.downcase}
	end
end
