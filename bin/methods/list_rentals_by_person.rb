class ListAllRentalsClass
  def initialize(rentals, people)
    @rentals = rentals
    @people = people
  end

  def lists_rentals_by_person_id
    clear

    @people.each do |person|
      puts "#{person.name} -- #{person.id}"
    end
    puts

    puts 'ID of person: '
    id = gets.chomp.to_i
    puts
    puts 'Rentals:'
    @rentals.each do |rental|
      puts "🔵 Date: #{rental.date}, Book '#{rental.book.title}' by #{rental.book.author}" if rental.person.id == id
    end
    puts
  end
end
