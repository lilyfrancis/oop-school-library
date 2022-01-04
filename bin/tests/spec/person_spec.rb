require_relative '../../classes/person'

describe Person do
  subject(:person) { Person.new(12, 'saman', parent_permission: false) }

  it 'It is the same class type as Person class' do
    expect(person).to be_a Person
  end

  it 'should have a age' do
    expect(person.age).to eq(12)
  end

  it 'should have a name' do
    expect(person.name).to eq('saman')
  end
end
