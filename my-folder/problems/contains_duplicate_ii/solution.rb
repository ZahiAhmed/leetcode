# @param {Integer[]} nums
# @param {Integer} k
# @return {Boolean}
def contains_nearby_duplicate(nums, k)
    count = Hash.new { |h,k| h[k] = [] }

    nums.each.with_index { |ele,i| count[ele] << i }

    count.each do |key, array|
        if array.length > 1
            i = 0
            while i < array.length   
                array.each.with_index do |ele,j| 
                    return true if (array[i] - ele).abs <= k && j != i
                end
                i+=1
            end 
        end
    end

    return false
end