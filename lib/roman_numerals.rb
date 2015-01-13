module RomanNumerals
  class RomanNumeralConverter

    NUMBER_RANGES = {
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

    def to_roman_numeral(number, current_range=0, output='')
        if(number == 0)
          return output
        end

        if(NUMBER_RANGES.keys[current_range] === number)
          range_data = NUMBER_RANGES.values[current_range]
          to_roman_numeral(number - range_data[:negate], current_range, output + range_data[:symbol]) 
        else
          to_roman_numeral(number, current_range + 1, output)
        end
    end
  end
end

