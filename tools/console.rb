require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


spongebob = Student.new("Spongebob")
patrick = Student.new("Patrick")
sandy = Student.new("Sandy")
squidward = Student.new("Squidward")

mrs_puff = Instructor.new("Mrs. Puff")
mr_krabs = Instructor.new("Mr. Krabs")

spongebob.add_boating_test("Permit Test1", mrs_puff)
spongebob.add_boating_test("Permit Test2", mrs_puff)
spongebob.add_boating_test("Permit Test3", mrs_puff)
spongebob.add_boating_test("Permit Test4", mrs_puff)
patrick.add_boating_test("Motorcycle License", mr_krabs)
sandy.add_boating_test("Motorcycle License", mr_krabs)
sandy.add_boating_test("Boating License", mrs_puff)
squidward.add_boating_test("MoPed License", mrs_puff)

mrs_puff.fail_student(spongebob, "Permit Test1")
mrs_puff.fail_student(spongebob, "Permit Test2")
mrs_puff.fail_student(spongebob, "Permit Test3")
mrs_puff.pass_student(spongebob, "Permit Test4")

mrs_puff.pass_student(sandy, "Boating License")
mr_krabs.pass_student(sandy, "Motorcycle License")


test = spongebob.grade_percentage
test2 = sandy.grade_percentage
# mr_krabs.fail_student(patrick, "Motorcycle License")


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
