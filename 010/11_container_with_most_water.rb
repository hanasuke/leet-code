# @param {Integer[]} height
# @return {Integer}
def max_area(height)
  max_area = 0
  max_area_height = 0
  max_area_width = 0
  height.each_with_index do |h, w1|
    (w1+1).upto(height.length-1) do |w2|
      next if height[w1] < max_area_height && max_area_width > (w2-w1)
      area = (height[w1] > height[w2]) ? height[w2] * (w2 - w1) : height[w1] * (w2-w1)

      if max_area < area
        max_area = area
        max_area_height = (height[w1] > height[w2]) ? height[w2] : height[w1]
        max_area_width = w2 - w1
      end
    end
  end

  max_area
end
