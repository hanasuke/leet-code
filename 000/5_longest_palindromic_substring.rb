# @return {String}
def longest_palindrome(s)
  longest_substr = ''
  array = s.split('')
  len = s.length

  return s if palindrome?(s)
  longest_substr = array[0]

  array.each_with_index do |_, idx|
    carry = 0
    flag = true

    1.upto(idx) do  |r|
      break if (idx - r < 0)
      if array[idx-r] == array[idx] && flag
        carry += 1
        if array[idx-r..idx].length > longest_substr.length
          longest_substr = array[idx-r..idx].join
        end
        next
      end

      flag = false
      next if longest_substr.length > idx + r + carry

      break unless palindrome?(array[idx-r..idx+r-carry].join)
      if array[idx-r..idx+r-carry].length > longest_substr.length
        longest_substr = array[idx-r..idx+r-carry].join
      end
    end
  end

  return longest_substr
end

def palindrome?(substr)
  substr == substr.reverse
end
