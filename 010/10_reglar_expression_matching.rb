# @param {String} s
# @param {String} p
# @return {Boolean}
def is_match(s, p)
  match =  %r(#{p}).match(s)
  return false if match.nil?

  match.to_s == s
end
