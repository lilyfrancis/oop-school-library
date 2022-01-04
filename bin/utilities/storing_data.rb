require_relative './store_books'
require_relative './store_people'
require_relative './store_rentals'

class StoringDataClass
  def initialize(books, people, rentals)
    @books = books
    @people = people
    @rentals = rentals
  end

  def run
    store_books_class = StoreBooksClass.new(@books)
    store_books_class.stores_books

    store_people_class = StorePeopleClass.new(@people)
    store_people_class.stores_people

    store_rentals_class = StoreRentalsClass.new(@rentals)
    store_rentals_class.stores_rentals
  end
end
