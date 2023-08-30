# @param {Integer[]} nums
# @param {Integer} val
# @return {Integer}
def remove_element(nums, val)
    nums.select!{|num| num != val}.nil? ? nums.length : nums.length
end