# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Float}
def find_median_sorted_arrays(nums1, nums2)
  array = (nums1 + nums2).sort
  mid = array.length.to_f / 2
  if array.length.odd?
    return array[mid.floor]
  else
    return (array[mid-1] + array[mid]).to_f / 2
  end
end
