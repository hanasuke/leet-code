# @param {String} s
# @return {String}
def longest_palindrome(s)
  longest_substr = ''
  str_array = s.split('')
  rev_str_array = str_array.reverse
  len = s.length

  carry = 0

  str_array.each_with_index do |_, idx|
    idx.upto(len-1) do |r|
      next if str_array[idx..r] != str_array[idx..r].reverse
      longest_substr = str_array[idx..r].join if str_array[idx..r].length > longest_substr.length
    end

    break if (len - idx) < longest_substr.length
  end

  return longest_substr
end
