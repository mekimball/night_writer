require './lib/braille_reader'

RSpec.describe BrailleReader do
  before(:each) do
    @braille_reader = BrailleReader.new
  end

  it 'exists' do
    expect(@braille_reader).to be_a(BrailleReader)
  end

  it 'can translate single braille to english' do
    expect(@braille_reader.translate_back([['0.', '..', '..']])).to eq('a')
  end

  it 'can translate multiple  braille' do
    expect(@braille_reader.translate_back([['0.', '..', '..'],
                                           ['0.', '..', '..']])).to eq('aa')
    expect(@braille_reader.translate_back([['00', '..', '..'],
                                           ['0.', '.0', '..']])).to eq('ce')
  end

  it 'can translate numbers back' do
    expect(@braille_reader.translate_back([['.0', '.0', '00'],
                                           ['0.', '..', '..']])).to eq('1')
  end
end
