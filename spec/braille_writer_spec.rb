require './lib/braille_writer'

RSpec.describe BrailleWriter do
  before(:each) do
    @braillewriter = BrailleWriter.new
  end

  it 'exists' do
    expect(@braillewriter).to be_a(BrailleWriter)
  end

  it 'can translate lowercase letters' do
    expect(@braillewriter.translate('a')).to eq(['0.', '..', '..'])
    expect(@braillewriter.translate(',')).to eq(["..", "0.", ".."])
  end
end
