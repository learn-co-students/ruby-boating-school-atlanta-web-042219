require_relative 'boatingtest'
require_relative 'instructor'
require_relative 'student'

require 'pry'
###
asa = Student.new("Andrew")
kc = Instructor.new("Brit")

asa.add_boating_test("test #1", kc)
asa.add_boating_test("test #2", kc)
asa.add_boating_test("test #3", kc)

kc.pass_student(asa, asa.tests[0])
kc.pass_student(asa, asa.tests[1])
kc.fail_student(asa, asa.tests[2])


spongebob = Student.new("Spongebob")
patrick= Student.new("Patrick")

puff= Instructor.new("Ms.Puff")
krabs= Instructor.new("Mr.Krabs")

no_crashing = spongebob.add_boating_test("Don't Crash 101", "pending", puff)
power_steering_failure = patrick.add_boating_test("Power Steering 202", "failed", puff)
power_steering_pass = patrick.add_boating_test("Power Steering 201", "passed", krabs)










###
binding.pry