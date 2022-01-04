require './utilities/clearing_terminal'

class ListAllBooksClass
  def initialize(books)
    @books = books
  end

  def lists_all_books
    clear
    if @books.empty?
      puts 'There are no books yet! Add a book.'
    else
      @books.each { |book| puts "Title: #{book.title}, Author: #{book.author}" }
    end
    puts
  end
end
