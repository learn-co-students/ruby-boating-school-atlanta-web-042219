require_relative '../config/environment.rb'
# require_relative '../app/models/student.rb'
# require_relative '../app/models/instructor.rb'
# require_relative '../app/models/boatingtest.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

brit = Instructor.new('Brit')
will = Student.new('Will')
new_test = will.add_boating_test(will,'superduper test', brit)
best_test = will.add_boating_test(will,'best test', brit)
hard_test = will.add_boating_test(will,'sampletest', brit)

brit.pass_student(will, best_test)
brit.fail_student(will, new_test)
brit.pass_student(will, hard_test)
binding.pry
0 #leave this here to ensure binding.pry isn't the last line
