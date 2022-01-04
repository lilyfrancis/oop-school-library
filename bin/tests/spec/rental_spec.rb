require_relative '../../classes/actual_books'
require_relative '../../classes/person'
require_relative '../../classes/rentals'

describe Rental do
  subject(:person) { Person.new(123, 'saman', parent_permission: false) }

  subject(:book) { ActualBook.new('title_of_book', 'author_of_book') }

  subject(:rentals) { Rental.new('today', book, person) }

  it 'It is the same class type as rentals class' do
    expect(rentals).to be_a Rental
  end

  it 'should have a date' do
    expect(rentals.date).to eql('today')
  end
  it 'should have a book' do
    expect(rentals.book).to eql(book)
  end
  it 'should have a person' do
    expect(rentals.person).to eql(person)
  end
end
