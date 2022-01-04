# rubocop:disable Style/FileWrite
require 'json'

class StorePeopleClass
  def initialize(people)
    @people = people
  end

  def stores_people
    students = []
    teachers = []

    @people.each do |person|
      if defined?(person.specialization)
        teachers.push([person.specialization, person.age, person.name])
      else
        students.push([person.age, person.name, person.parent_permission])
      end
    end

    File.new('./data/students.json', 'w+') unless File.exist?('./data/students.json')
    File.new('./data/teachers.json', 'w+') unless File.exist?('./data/teachers.json')

    File.open('./data/students.json', 'w') do |f|
      f.write(students.to_json)
    end

    File.open('./data/teachers.json', 'w') do |f|
      f.write(teachers.to_json)
    end
  end
end
# rubocop:enable Style/FileWrite
