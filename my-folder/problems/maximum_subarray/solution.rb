# @param {Integer[]} nums
# @return {Integer}
def max_sub_array(nums)
    largest = nums.first
    current = nums.first

    (1...nums.length).each do |i|
        current = 0 if current < 0
        current += nums[i]
        largest = current if current > largest
    end

    largest
end