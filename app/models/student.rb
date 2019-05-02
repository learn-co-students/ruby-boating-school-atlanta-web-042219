class Student
    attr_accessor :first_name
    @@students = []

    def initialize(first_name)
        @first_name = first_name
        @@students << self
    end

    def self.all
        @@students
    end

    def self.find_student(name)
        @@students.select { |x| x == name }
    end

    def grade_percentage
        passed = 0
        tests = 0

        BoatingTest.all.each do |test|
            if test.student.first_name == self.first_name
                tests += 1
            end

            if test.student.first_name == self.first_name && test.test_status == "passed"
                passed += 1
            end
        end

        result = (passed.to_f / tests.to_f) * 100
        result
    end

    def add_boating_test(test, status, instructor)
        BoatingTest.new(self, test, status, instructor)
    end

end
