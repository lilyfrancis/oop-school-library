require 'json'

class StoreRentalsClass
  def initialize(rentals)
    @rentals = rentals
  end

  def stores_rentals
    data = []
    @rentals.each do |rental|
      data.push([rental.date, rental.book.title, rental.person.name])
    end
    File.new('./data/rentals.json', 'w+') unless File.exist?('./data/rentals.json')
    File.write('./data/rentals.json') do |f|
      f.write(data.to_json)
    end
  end
end
