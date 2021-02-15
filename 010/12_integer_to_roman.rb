# @param {Integer} num
# @return {String}
def int_to_roman(num)
  roman = ''
  while (num > 0)
    if num - 1000 >= 0
      roman << 'M'
      num -= 1000
    elsif num - 900 >= 0
      roman << 'CM'
      num -= 900
    elsif num - 500 >= 0
      roman << 'D'
      num -= 500
    elsif num - 400 >= 0
      roman << 'CD'
      num -= 400
    elsif num - 100 >= 0
      roman << 'C'
      num -= 100
    elsif num - 90 >= 0
      roman << 'XC'
      num -= 90
    elsif num - 50 >= 0
      roman << 'L'
      num -= 50
    elsif num - 40 >= 0
      roman << 'XL'
      num -= 40
    elsif num - 10 >= 0
      roman << 'X'
      num -= 10
    elsif num - 9 >= 0
      roman << 'IX'
      num -= 9
    elsif num - 5 >=0
      roman << 'V'
      num -= 5
    elsif num - 4 >= 0
      roman << 'IV'
      num -= 4
    else
      roman << 'I'
      num -= 1
    end
  end

  roman
end
