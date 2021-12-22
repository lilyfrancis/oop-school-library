require_relative './corrector'

class Person
  attr_accessor :name, :age, :rentals
  attr_reader :id

  def initialize(age, name = 'Unknown', parent_permission: true)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @corrector = Corrector.new
    @rentals = []
  end

  def add_rental(_rental)
    Rental.new(date, self, book)
  end

  def validate_name
    @name = @corrector.correct_name
  end

  def can_use_services?
    of_age? || parent_permission == true
  end

  private

  def of_age?
    @age >= 18
  end
end

me = Person.new(17, 'lilian')
p me.validate_name
