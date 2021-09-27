require './lib/braille_reader'

RSpec.describe BrailleReader do
  before(:each) do
    @braille_reader = BrailleReader.new
  end

  it 'exists' do
    expect(@braille_reader).to be_a(BrailleReader)
  end

  it 'can translate braille to english' do
    expect(@braille_reader.translate_back([['0.', '..', '..']])).to eq('a')
  end
end
