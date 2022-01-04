require_relative '../../classes/actual_books'

describe ActualBook do
  context 'When initializing should create a new Book Class' do
    it 'should create a new Book Class' do
      book = ActualBook.new('Harry', 'Potter')
      expect(book).to be_an_instance_of(ActualBook)
    end

    it 'should create a new Book Class with title and author' do
      book = ActualBook.new('Harry', 'Potter')
      expect(book.title).to eq('Harry')
      expect(book.author).to eq('Potter')
    end
  end
end
