class Instructor

  @@all = []
  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def pass_student(student, test_name)
    # passed = []
    test =  BoatingTest.all.find { |test| test.student == student && test.test_name == test_name}
    if test.nil?
      return BoatingTest.new(student, test_name, self, 'Passed')
    else
      test.test_status = 'Passed'
      return test
    end
    # if test == nil
    #     passed << BoatingTest.new(student, test_name, self, "Passed")
    #     return passed
    # else
    #   test.test_status = "Passed"
    #   test
    # end
  end

  def fail_student(student, test_name)
    failed = []
    test =  BoatingTest.all.find { |test| test.student == student && test.test_name == test_name}
        if test == nil
            failed << BoatingTest.new(student, test_name, self, "Failed")
            return failed
        else
          test.test_status = "Failed"
          test
        end
  end



end
