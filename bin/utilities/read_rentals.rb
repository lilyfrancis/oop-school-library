require 'json'
require './classes/rentals'

class ReadRentalsClass
  def initialize(rentals, people, books)
    @rentals = rentals
    @books = books
    @people = people
  end

  def retrieves_rentals
    return unless File.exist?('./data/rentals.json')

    file = File.read('./data/rentals.json')
    rentals = JSON.parse(file)

    rentals.each do |rent|
      the_book = ''
      @books.each do |book|
        the_book = book if book.title == rent[1]
      end

      the_person = ''

      @people.each do |person|
        the_person = person if person.name == rent[2]
      end

      create_rentals_class = Rental.new(rent[0], the_book, the_person)

      @rentals << create_rentals_class
    end
  end
end
