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
    File.open('./data/rentals.json' , 'w') do |f|
      f.write(data.to_json)
    end
  end
end
