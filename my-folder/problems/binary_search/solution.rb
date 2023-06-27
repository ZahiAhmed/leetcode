# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search(nums, target)
    size = nums.length/2
    return -1 if nums.length == 1 && target != nums[0]
    return size if target == nums[size]
    left_arr = nums[0...size]
    right_arr = nums[size..-1]
    if target < nums[size]    
        search(left_arr, target)
    else        
         if search(right_arr, target) == -1
            return -1
         else
            search(right_arr,target) + size
         end
    end
end