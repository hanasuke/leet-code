# @param {Integer} x
# @return {Integer}
def reverse(x)
  code = x >= 0 ? 1 : -1

  rev = (x * code).to_s.reverse.to_i*code
  if rev > 2**31 - 1 || rev < -1 * 2**31
    return 0
  else
    rev
  end
end
