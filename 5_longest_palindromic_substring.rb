# @param {String} s
# @return {String}
def longest_palindrome(s)
  longest_substr = ''
  array = s.split('')
  len = s.length

  array.each_with_index do |_, idx|
    if len == 1
      longest_substr = array.join
      break
    end

    if palindrome?(array[idx-1..idx].join)
      if array[idx-1..idx].length > longest_substr.length
        longest_substr = array[idx-1..idx].join
      end
      carry = 1
    else
      carry = 0
    end

    1.upto(len-idx) do  |r|
      break if (idx - r - carry < 0) || (idx + r >= len)
      if palindrome?(array[idx-r-carry..idx+r].join)
        if array[idx-r-carry..idx+r].length > longest_substr.length
          longest_substr = array[idx-r-carry..idx+r].join
        end
      else
        break
      end
    end
  end

  return longest_substr
end

def palindrome?(substr)
  return true if substr.length == 1

  array = substr.split('')
  len = array.length
  mid = len / 2
  if len.odd?
    array.each_with_index do |_, idx|
      break if idx == mid

      return false unless array[idx] == array[-1-idx]
    end
  else
    array.each_with_index do |s, idx|
      break if mid < idx

      return false unless array[idx] == array[-1-idx]
    end
  end

  return true
end
