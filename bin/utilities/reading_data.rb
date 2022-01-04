require 'json'
require './utilities/read_books'
require './utilities/read_people'
require './utilities/read_rentals'

class ReadingDataClass
  def initialize(books, people, rentals)
    @books = books
    @people = people
    @rentals = rentals
  end

  def run
    read_book_class = ReadBooksClass.new(@books)
    read_book_class.retrieves_books

    read_people_class = ReadPeopleClass.new(@people)
    read_people_class.retrieves_people

    read_rentals_class = ReadRentalsClass.new(@rentals, @people, @books)
    read_rentals_class.retrieves_rentals
  end
end
