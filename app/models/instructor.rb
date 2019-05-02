class Instructor
    attr_accessor :name, :student
    @@instructors = []

    def initialize(name)
        @name = name
    end

    def self.all
        @@instructors
    end

    def pass_student(student, test)
        BoatingTest.all.select do |x|
            if x.student == student && x.test_name == test
                x.test_status == "passed"
            else
                BoatingTest.new(student, test, "passed", self)
            end
        end
    end

    def fail_student(student, test)
        BoatingTest.all.find do |x|
            if x.student == student && x.test_name == test
                x.test_status == "failed"
            else
                BoatingTest.new(student, test, "failed", self)
            end
        end
    end

end
