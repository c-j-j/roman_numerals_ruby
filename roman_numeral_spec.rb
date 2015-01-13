require_relative 'lib/roman_numerals'

describe RomanNumerals::RomanNumeralConverter do

  let(:converter){RomanNumerals::RomanNumeralConverter.new}

  it 'converts 1 to I' do
    expect(converter.to_roman_numeral(1)).to eq('I')
  end

  it 'converts 3 to III' do
    expect(converter.to_roman_numeral(3)).to eq('III')
  end

  it 'converts 4 to IV' do
    expect(converter.to_roman_numeral(4)).to eq('IV')
  end

  it 'converts 5 to V' do
    expect(converter.to_roman_numeral(5)).to eq('V')
  end

  it 'converts 8 to VIII' do
    expect(converter.to_roman_numeral(8)).to eq('VIII')
  end

  it 'converts 9 to IX' do
    expect(converter.to_roman_numeral(9)).to eq('IX')
  end

  it 'converts 10 to X' do
    expect(converter.to_roman_numeral(10)).to eq('X')
  end

  it 'converts 14 to XIV' do
    expect(converter.to_roman_numeral(14)).to eq('XIV')
  end

  it 'converts 40 to XL' do
    expect(converter.to_roman_numeral(40)).to eq('XL')
  end

  it 'converts 50 to L' do
    expect(converter.to_roman_numeral(50)).to eq('L')
  end

  it 'converts 90 to XC' do
    expect(converter.to_roman_numeral(90)).to eq('XC')
  end

  it 'converts 100 to C' do
    expect(converter.to_roman_numeral(100)).to eq('C')
  end

  it 'converts 400 to CD' do
    expect(converter.to_roman_numeral(400)).to eq('CD')
  end

  it 'converts 500 to D' do
    expect(converter.to_roman_numeral(500)).to eq('D')
  end

  it 'converts 900 to CM' do
    expect(converter.to_roman_numeral(900)).to eq('CM')
  end

  it 'converts 1000 to M' do
    expect(converter.to_roman_numeral(1000)).to eq('M')
  end

  it 'converts 2014 to MMXIV' do
    expect(converter.to_roman_numeral(2014)).to eq('MMXIV')
  end
end
