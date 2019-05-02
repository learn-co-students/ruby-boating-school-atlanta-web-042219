class Instructor
  attr_accessor :name
  @@all = []

  def initialize(instructor_name)
    @name = instructor_name
    @@all << self
  end
#works ^^
  def pass_student(student_obj, test_object)
    BoatingTest.all.each do |boating_test_obj|
      if boating_test_obj.student.first_name == student_obj.first_name
        if boating_test_obj.boating_test_name == test_object.boating_test_name
        boating_test_obj.boat_test_status = 'passed'
      end
      end
    end
    test_object.boating_test_name
  end

#works ^^

  def fail_student(student_obj, test_object)
    BoatingTest.all.each do |boating_test_obj|
      if boating_test_obj.student.first_name == student_obj.first_name
        if boating_test_obj.boating_test_name == test_object.boating_test_name
        boating_test_obj.boat_test_status = 'failed'
      end
      end
    end
    test_object.boating_test_name
  end

#works ^^

end
