# @param {String} s
# @return {Integer}
def roman_to_int(s)
  num = 0
  mapping.keys.each do |k|
    /^#{k}+/.match(s) { |m| num += mapping[k] * m[0].length / k.length }
    s.gsub!(/^#{k}+/, '')
  end

  num
end

def mapping
  @chars ||= {
    'M'  => 1000,
    'CM' => 900,
    'D'  => 500,
    'CD' => 400,
    'C'  => 100,
    'XC' => 90,
    'L'  => 50,
    'XL' => 40,
    'X'  => 10,
    'IX' => 9,
    'V'  => 5,
    'IV' => 4,
    'I'  => 1
  }
end
