class BoatingTest
attr_accessor :student, :boating_test_name, :boat_test_status, :instructor
  @@all = []

  def initialize(student_obj, boating_test_name, instructor_obj)
    @student = student_obj
    @boating_test_name = boating_test_name
    @instructor = instructor_obj
    # @boat_test_status = 'untaken'
    @@all << self
  end
#works ^^
  def self.all
    @@all
  end
#works ^
end
