class Student
    attr_reader :name
    @@all = []


    def initialize(first_name)
        @name = first_name
        @@all << self
    end

    def self.all
        @@all
    end

    def add_boating_test(test_name, status, instructor)
        BoatingTest.new(self, test_name, status, instructor)
    end

    def self.find_student(name)
        self.all.find { |student| student.name == name }
    end

    def grade_percentage
       tests_passed = 0
       grades = BoatingTest.all.map { |test| test.student.name == self.name ? test.status : nil }.compact
        grades.each do |grade|
            grade == "pass" ? tests_passed += 1 : nil
        end
        average = (tests_passed.to_f/grades.count) * 100
        puts "#{self.name} passed #{average}% of their tests"
        average
    end

end
