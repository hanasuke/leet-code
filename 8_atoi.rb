# @param {String} s
# @return {Integer}
def my_atoi(s)
  num_str = ''
  num_flag = false
  cond = 1 # default: positive

  unless /[-+]?\d/.match? s.strip[0..1]
    return 0
  end

  s.strip.each_char do |c|
    next if c == '+'
    break if ! /[-\d]/.match?(c) && num_flag

    if c == '-'
      cond = -1
      next
    end

    num_str << c
    num_flag = true
  end
  num = num_str.to_i * cond

  if num > 2**31 - 1
    return 2**31 - 1
  elsif num < -1 * 2**31
    return -1 * 2**31
  else
    return num
  end
end
