require_relative 'person'

class Student < Person
  attr_accessor :name
  attr_reader :classroom, :parent_permission

  def initialize(age, name, permission)
    super(age, parent_permission: permission)
    @name = name
  end

  def classroom=(sth)
    @classroom = sth
    sth.students.push(self) unless sth.students.include?(self)
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end
