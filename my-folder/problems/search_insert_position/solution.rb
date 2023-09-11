# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search_insert(nums, target)
    (0...nums.length).each do |i|
        return i if nums[i] >= target
    end

    return nums.size
end