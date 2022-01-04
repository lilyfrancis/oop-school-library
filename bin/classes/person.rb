require_relative 'corrector'

class Person
  attr_reader :id, :parent_permission
  attr_accessor :name, :age, :rental

  def initialize(age, name = 'Unknown', parent_permission: true)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @corrector = Corrector.new
    @rental = []
  end

  def validate_name
    @name = @corrector.correct_name(@name)
  end

  private

  def of_age?
    @age >= 18
  end

  def can_use_services?
    is_of_age? || @parent_permission
  end
end
