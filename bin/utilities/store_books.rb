require 'json'

class StoreBooksClass
  def initialize(books)
    @books = books
  end

  def stores_books
    data = []
    @books.each do |book|
      data.push([book.title, book.author])
    end
    File.new('./data/books.json', 'w+') unless File.exist?('./data/books.json')
    File.write('./data/books.json') do |f|
      f.write(data.to_json)
    end
  end
end
