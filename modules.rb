# Module with shared behavior
module Attendance
  def mark_attendance
    puts "#{@name}'s attendance marked successfully!"
  end
end

# Student class 
class Student
  include Attendance
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

# Teacher class 
class Teacher
  include Attendance
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

print "Enter number of people: "
count = gets.chomp.to_i

count.times do
  print "\nEnter role (student/teacher): "
  role = gets.chomp.downcase

  if role == "student"
    print "Enter name: "
    name = gets.chomp

    person = Student.new(name)
  elsif role == "teacher"
    print "Enter name: "
    name = gets.chomp
    
    person = Teacher.new(name)
  else
    puts "Invalid role. Skipping..."
    next
  end

  person.mark_attendance
end
