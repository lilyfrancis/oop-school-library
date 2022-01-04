require_relative '../classes/student'

class CreateNewStudent
  def initialize(people)
    @people = people
  end

  def create_a_student
    clear
    new_student = Student.new(student_age, student_name, student_permission == 'y')
    @people << new_student
    added_msg('Student')
  end

  def student_age
    print 'Age: '
    gets.chomp.to_i
  end

  def student_name
    print 'Name: '
    gets.chomp
  end

  def student_permission
    print 'Has parent permission? [Y/N]: '
    gets.chomp.downcase
  end
end
