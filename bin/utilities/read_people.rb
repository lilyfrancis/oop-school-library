require 'json'
require './classes/student'
require './classes/teacher'

class ReadPeopleClass
  def initialize(people)
    @people = people
  end

  def retrieves_people
    if File.exist?('./data/students.json')
      file = File.read('./data/students.json')
      students = JSON.parse(file)

      students.each do |student|
        create_student_class = Student.new(student[0], student[1], student[2])
        @people << create_student_class
      end
      clear
    end

    return unless File.exist?('./data/teachers.json')

    file = File.read('./data/teachers.json')
    teachers = JSON.parse(file)

    teachers.each do |teacher|
      create_teacher_class = Teacher.new(teacher[0], teacher[1], teacher[2])
      @people << create_teacher_class
    end
    clear
  end
end
