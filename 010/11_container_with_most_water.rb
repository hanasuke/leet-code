# @param {Integer[]} height
# @return {Integer}
def max_area(height)
  max_area = 0
  height.each_with_index do |h, w1|
    (w1+1).upto(height.length-1) do |w2|
      area = (height[w1] > height[w2]) ? height[w2] * (w2 - w1) : height[w1] * (w2-w1)

      max_area = area if max_area < area
    end
  end

  max_area
end
