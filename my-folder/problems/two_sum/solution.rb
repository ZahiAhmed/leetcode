# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
   (0..nums.length-1).each do |i|
        (i..nums.length-1).each do |j| 
            if nums[i] + nums[j] == target && i < j
                return [i,j]
            end
        end
    end
end