class Instructor
	attr_accessor :name
	@@all = []

	def self.all
		@@all
	end

	def initialize(name)
		@name = name

		@@all << self
	end

	def pass_student(student, test_name)
		tests = BoatingTest.find_by_name(test_name)
		test_return = nil

		tests.each {|test|
			if test.student == student
				test.status = "passed"
				test_return = test
			end
		}
		test_return = BoatingTest.new(student, test_name, "passed", self)
		test_return
	end

	def fail_student(student, test)
		tests = BoatingTest.find_by_name(test_name)
		test_return = nil

		tests.each {|test|
			if test.student == student
				test.status = "failed"
				test_return = test
			end
		}
		test_return = BoatingTest.new(student, test_name, "failed", self)
		test_return
	end
end
