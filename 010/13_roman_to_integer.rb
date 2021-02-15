# @param {String} s
# @return {Integer}
def roman_to_int(s)
  num = 0

  s.each_char.with_index do |c, i|
    current_value = mapping[c]
    unless s[i+1].nil?
      current_value >= mapping[s[i+1]] ? num += current_value : num -= current_value
    else
      num += current_value
    end
  end

  num
end

def mapping
  @chars ||= {
    'M' => 1000,
    'D' => 500,
    'C' => 100,
    'L' => 50,
    'X' => 10,
    'V' => 5,
    'I' => 1
  }
end
