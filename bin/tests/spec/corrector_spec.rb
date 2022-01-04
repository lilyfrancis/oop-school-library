require_relative '../../classes/corrector'

describe Corrector do
  context 'When calling Corrector.correct_name' do
    it 'Should check if the name is longer than 10 characters' do
      corrector = Corrector.new
      expect(corrector.correct_name('Juan Carlos')).to eq('Juan carlos')
      expect(corrector.correct_name('Juan Carlos Perez')).to eq('Juan carlos')
    end

    it 'Should capitalize the name' do
      corrector = Corrector.new
      expect(corrector.correct_name('juan carlos')).to eq('Juan carlos')
      expect(corrector.correct_name('juan Carlos perez')).to eq('Juan carlos')
    end
  end
end
