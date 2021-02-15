# @param {Integer[]} height
# @return {Integer}
def max_area(height)
  max_area = 0
  p_left = 0
  p_right = height.length-1

  while (p_left < p_right)
    area = [height[p_right], height[p_left]].min * (p_right - p_left)

    max_area = area if max_area < area

    if height[p_left] > height[p_right]
      p_right -= 1
    else
      p_left += 1
    end
  end

  max_area
end
