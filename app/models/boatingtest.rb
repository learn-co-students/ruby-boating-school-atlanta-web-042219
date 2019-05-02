class BoatingTest
    attr_accessor :student, :instructor, :test_name, :test_status
    @@boating_tests = []

    def initialize(student, test_name, test_status, instructor)
        @student = student
        @test_name = test_name
        @test_status = test_status
        @instructor = instructor
        @@boating_tests << self
    end

    def self.all
        @@boating_tests
    end

end
