class ListAllPeopleClass
  def initialize(people)
    @people = people
  end

  def lists_all_people
    clear
    if @people.empty?
      puts 'There are no people yet! Add a person.'
    else
      @people.map { |person| puts "[#{person.class}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}" }
    end
    puts
  end
end
