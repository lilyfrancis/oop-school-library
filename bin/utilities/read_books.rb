require 'json'
require './methods/create_a_book'

class ReadBooksClass
  def initialize(books)
    @list_of_books = books
  end

  def retrieves_books
    return unless File.exist?('./data/books.json')

    file = File.read('./data/books.json')
    books = JSON.parse(file)

    create_book_new_class = CreateBookClass.new(@list_of_books)
    books.each { |book| create_book_new_class.creates_a_book(book[0], book[1]) }
    clear
  end
end
