# rubocop:disable Metrics/CyclomaticComplexity
# rubocop:disable Metrics/MethodLength
require './methods/list_all_book'
require './methods/create_a_book'
require './methods/choose_person'
require './methods/list_all_people'
require './methods/create_a_rental'
require './methods/list_rentals_by_person'
require './utilities/clearing_terminal'
require './utilities/storing_data'
require './utilities/reading_data'

class App
  def initialize
    @list_of_books = []
    @list_all_books_class = ListAllBooksClass.new(@list_of_books)
    @create_book_class = CreateBookClass.new(@list_of_books)

    @list_of_people = []
    @list_all_people_class = ListAllPeopleClass.new(@list_of_people)
    @choose_type_of_person_class = ChooseTypeOfPersonClass.new(@list_of_people)

    @list_of_rentals = []
    @create_new_rental_class = CreateNewRentalClass.new(@list_of_books, @list_of_people, @list_of_rentals)
    @list_all_rentals_class = ListAllRentalsClass.new(@list_of_rentals, @list_of_people)
  end

  def run
    clear

    reading_data_class = ReadingDataClass.new(@list_of_books, @list_of_people, @list_of_rentals)
    reading_data_class.run

    puts 'Welcome to School Library App!', "\n"
    menu
  end

  def menu
    loop do
      options = ['List all books', 'List all people', 'Create a person', 'Create a book', 'Create a rental',
                 'List all rentals for a given person id', 'Save & Exit']
      options.each_with_index { |option, idx| puts "#{idx + 1} - #{option}" }
      option = gets.chomp
      case option
      when '1' then @list_all_books_class.lists_all_books
      when '2' then @list_all_people_class.lists_all_people
      when '3' then @choose_type_of_person_class.chooses_a_person
      when '4' then @create_book_class.ask_info
      when '5' then @create_new_rental_class.creates_a_rental
      when '6' then @list_all_rentals_class.lists_rentals_by_person_id
      when '7'
        storing_data_class = StoringDataClass.new(@list_of_books, @list_of_people, @list_of_rentals)
        storing_data_class.run
        clear
        puts 'Thank you for using this app!😀', "\n"
        break
      else
        clear
        puts '⚠️  Please enter a number between 1 and 7', "\n"
      end
    end
  end
end

def main
  app = App.new
  app.run
end

main
# rubocop:enable Metrics/CyclomaticComplexity
# rubocop:enable Metrics/MethodLength