require_relative '../../classes/classroom'

describe Classroom do
  context 'When initializing should create a new Classroom Class' do
    it 'should create a new instance of Classroom' do
      classroom = Classroom.new('label')
      expect(classroom).to be_an_instance_of(Classroom)
    end
  end
end
