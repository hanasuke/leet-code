# @param {Integer} num
# @return {String}
def int_to_roman(num)
  roman = ''
  while (num > 0)
    mapping.keys.each do |key|
      if (div = num / key) > 0
        roman << (mapping[key] * div)
        num -= key * div
      end
    end
  end

  roman
end

def mapping
  @chars ||= {
    1000 => 'M',
     900 => 'CM',
     500 => 'D',
     400 => 'CD',
     100 => 'C',
      90 => 'XC',
      50 => 'L',
      40 => 'XL',
      10 => 'X',
       9 => 'IX',
       5 => 'V',
       4 => 'IV',
       1 => 'I'
  }
end
