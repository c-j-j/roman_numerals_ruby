module RomanNumerals
  class RomanNumeralConverter

    @@number_ranges = {
      (1000..3000)=> {negate: 1000,symbol: 'M'},
      (900..999)=> {negate: 900,symbol: 'CM'},
      (500..899)=> {negate: 500,symbol: 'D'},
      (400..449)=> {negate: 400,symbol: 'CD'},
      (100..399)=> {negate: 100,symbol: 'C'},
      (90..99)=> {negate: 90,symbol: 'XC'},
      (50..89)=> {negate: 50,symbol: 'L'},
      (40..49)=> {negate: 40,symbol: 'XL'},
      (10..39)=> {negate: 10,symbol: 'X'},
      (9)=> {negate: 9,symbol: 'IX'},
      (5..8)=> {negate: 5,symbol: 'V'},
      (4)=> {negate: 4,symbol: 'IV'},
      (1..3)=> {negate: 1,symbol: 'I'}
    }

    def to_roman_numeral(number, output='')
      @@number_ranges.each do |number_range, range_data|
        if(number == 0)
          break
        end

        if(number_range === number)
          output += to_roman_numeral(number-range_data[:negate], range_data[:symbol]) 
        end
      end

      output
    end
  end
end

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
