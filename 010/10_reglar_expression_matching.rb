# @param {String} s
# @param {String} p
# @return {Boolean}
def is_match(s, p)
  %r(#{p}).match(s).to_a[0] == s
end
