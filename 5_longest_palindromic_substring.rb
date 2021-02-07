# @param {String} s
# @return {String}
def longest_palindrome(s)
  longest_substr = ''
  array = s.split('')
  len = s.length

  return s if s == s.reverse

  array.each_with_index do |_, idx|
    carry = 0
    next if longest_substr.length > idx

    # same char check
    0.upto(idx) do |r|
      next if longest_substr.length > idx + r
      break unless array[idx-r..idx].uniq.length == 1
      carry = r
      if array[idx-r..idx].length > longest_substr.length
        longest_substr = array[idx-r..idx].join
      end
    end

    (longest_substr.length/2).upto(len-idx) do  |r|
      break if (idx - r - carry < 0) || (idx + r >= len)
      next if longest_substr.length > idx + r

      break unless palindrome?(array[idx-r-carry..idx+r].join)
      if array[idx-r-carry..idx+r].length > longest_substr.length
        longest_substr = array[idx-r-carry..idx+r].join
      end
    end
  end

  return longest_substr
end

def palindrome?(substr)
  substr == substr.reverse
end
