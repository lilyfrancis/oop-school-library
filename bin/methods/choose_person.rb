require_relative '../utilities/clearing_terminal'
require_relative './create_a_teacher'
require_relative './create_a_student'

class ChooseTypeOfPersonClass
  def initialize(people)
    @people = people
    @teacher_creation = CreateNewTeacher.new(@people)
    @student_creation = CreateNewStudent.new(@people)
  end

  def chooses_a_person
    clear
    print 'Do you want to create a student (1) or teacher (2): '
    loop do
      option = gets.chomp
      case option
      when '1'
        @student_creation.create_a_student
        break
      when '2'
        @teacher_creation.creates_a_teacher
        break
      else
        clear
        puts 'Invalid input. Kindly type 1 or 2.', "\n"
      end
    end
  end
end
