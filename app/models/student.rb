class Student

  attr_accessor :first_name
  @@all = []

  def initialize(first_name)
    @first_name = first_name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_boating_test(test_name, instructor)
    BoatingTest.new(self, test_name, instructor)
  end

  def self.find_student(first_name)
    Student.all.select {|student| student.first_name = first_name}
  end

  def grade_percentage
    tests = BoatingTest.all.select {|test| test.student == self}
    total = tests.length
    passing = tests.select {|test| test.test_status == "Passed"}.length
    percentage = (passing.to_f / total.to_f) * 100
    percentage.to_i
  end

end
