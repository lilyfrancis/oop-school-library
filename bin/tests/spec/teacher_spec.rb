require_relative '../../classes/teacher'

describe Teacher do
  subject(:teacher) { Teacher.new('Doctor', 12, 'saman') }

  it 'It is the same class type as teachers class' do
    expect(teacher).to be_a Teacher
  end

  it 'should have a specialization' do
    expect(teacher.specialization).to eql('Doctor')
  end
  it 'should have a age' do
    expect(teacher.age).to eql(12)
  end
  it 'should have a name' do
    expect(teacher.name).to eql('saman')
  end
end
