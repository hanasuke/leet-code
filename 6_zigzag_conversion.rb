# @param {String} s
# @param {Integer} num_rows
# @return {String}
def convert(s, num_rows)
  converted = ''
  return s if num_rows == 1
  num_rows.times do |row|
    next if (num_rows-1).zero?
    row.step(s.length, 2*(num_rows-1)) do |idx|
      next if s[idx].nil?
      converted << s[idx]
      next if s[(num_rows-row-1)*2+idx].nil? || row == 0 || row == num_rows-1
      converted << s[(num_rows-row-1)*2+idx]
    end
  end
  converted
end
