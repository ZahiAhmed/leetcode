# @param {Integer[]} nums
# @return {Boolean}
def contains_duplicate(nums)
    count = Hash.new(0)

    nums.each do |num|
        count[num] += 1
        return true if count[num] > 1
    end

    return false
end