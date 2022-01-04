require_relative '../../classes/student'

describe Student do
  subject(:student) { Student.new(123, 'saman', false) }

  it 'It is the same class type as Students class' do
    expect(student).to be_a Student
  end

  it 'should have a age' do
    expect(student.age).to eql(123)
  end
  it 'should have a name' do
    expect(student.name).to eql('saman')
  end
end
