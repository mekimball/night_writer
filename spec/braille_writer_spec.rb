require './lib/braille_writer'

RSpec.describe BrailleWriter do
  before(:each) do
    @braillewriter = BrailleWriter.new
  end

  it 'exists' do
    expect(@braillewriter).to be_a(BrailleWriter)
  end

  it 'can translate lowercase letters' do
    expect(@braillewriter.translate('a')).to eq([['0.', '..', '..']])
  end
  
  it 'can translate single numbers' do
    expect(@braillewriter.translate('1')).to eq([['.0', '.0', '00'],['0.', '..', '..']])
    expect(@braillewriter.translate('0')).to eq([['.0', '.0', '00'],['.0', '00', '..']])
  end
  
  it 'can translate multiple letters' do
    expect(@braillewriter.translate('aa')).to eq([['0.', '..', '..'],['0.', '..', '..']])
  end
end
