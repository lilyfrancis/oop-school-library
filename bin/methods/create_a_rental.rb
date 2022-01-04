require_relative '../classes/rentals'

class CreateNewRentalClass
  def initialize(books, people, rentals)
    @books = books
    @people = people
    @rentals = rentals
  end

  def creates_a_rental
    clear

    book_id = show_books_by_number
    person_id = show_persons_by_number
    date = getting_a_date

    new_rental = Rental.new(date, @books[book_id], @people[person_id])
    @rentals << new_rental
    added_msg('Rent')
  end

  def show_books_by_number
    puts 'Select a book by number:'
    @books.each_with_index { |book, idx| puts "  #{idx}) Title: #{book.title}, Author: #{book.author}" }
    gets.chomp.to_i
  end

  def show_persons_by_number
    puts
    puts 'Select a person by number (not id):'
    @people.each_with_index do |person, idx|
      puts "  #{idx}) [#{person.class}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
    end
    gets.chomp.to_i
  end

  def getting_a_date
    puts
    print 'Date: '
    gets.chomp.to_s
  end
end
