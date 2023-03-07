# @param {Integer[]} nums
# @return {Integer}
def pivot_index(nums)
    right = 0;
    left = nums.sum
    nums.each.with_index do |num, i|
        right += nums[i-1] if i > 0 
        left -= num
        return i if(right == left) 
    end
    -1
end