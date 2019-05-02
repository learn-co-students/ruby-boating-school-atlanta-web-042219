class Student
  attr_accessor :first_name
  @@all = []


  def initialize(first_name)
    @first_name = first_name
    @@all << self
  end
#works ^
  def self.all
    @@all
  end

#works ^^

  def add_boating_test(student_obj, boating_test_name, instructor_obj)
    BoatingTest.new(student_obj, boating_test_name, instructor_obj)
  end

  #works^^^

  def self.find_student(first_name)
    desired_student = ''
    BoatingTest.all.each do |boating_test_obj|
      if boating_test_obj.student.first_name == first_name
        desired_student = boating_test_obj.student
      end
    end
    desired_student
  end

  #works ^


#not defined as a class method but maybe could work?
  def grade_percentage
    student_grades = []
    BoatingTest.all.each do |boating_test_obj|
      if boating_test_obj.student.first_name == self.first_name
        student_grades << boating_test_obj.boat_test_status
      end
    end
  #create avg of pass/fail student grades array
    grade_avg = []
    student_grades.each do |grade|
      if grade == "passed"
        grade_avg << 100
      elsif grade == "failed"
        grade_avg << 0
      end
    end
    grade_avg.sum/grade_avg.size
  end


end
