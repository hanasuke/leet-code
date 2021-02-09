# @param {Integer} x
# @return {Integer}
def reverse(x)
  code = x >= 0 ? '' : '-'

  rev = (code + x.to_s.reverse).to_i
  if rev.bit_length > 31
    return 0
  else
    rev
  end
end
