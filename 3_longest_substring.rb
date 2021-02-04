# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
  substr = ''
  longest_substr_count = 0

  s.split('').each do |c|
    unless substr.include?(c)
      substr << c
      longest_substr_count = substr.length if substr.length > longest_substr_count
    else
      substr = ''
    end
  end

  longest_substr_count
end
