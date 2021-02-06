# @param {String} s
# @return {String}
def longest_palindrome(s)
  longest_substr = ''
  array = s.split('')

  array.each_with_index do |_, idx|
    array.length.times do |len|
      if palindrome?(array[idx..len].join())
        longest_substr = array[idx..len].join() if array[idx..len].length > longest_substr.length
      end
    end
  end

  return longest_substr
end

def palindrome?(substr)
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
