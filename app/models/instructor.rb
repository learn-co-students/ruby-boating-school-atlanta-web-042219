class Instructor
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def pass_student(student, t_name)
       result = BoatingTest.all.find { |test| test.test_name == t_name && test.student == student }
       result == nil ? BoatingTest.new(student, t_name, "pass", self) : result.status = "pass"
    end

    def fail_student(student, t_name)
        result = BoatingTest.all.find { |test| test.test_name == t_name && test.student == student }
       result == nil ? BoatingTest.new(student, t_name, "fail", self) : result.status = "fail"
    end

end
