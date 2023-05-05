# @param {Integer[]} nums
# @return {Integer}
def single_number(nums)
    count = Hash.new(0)

    nums.each do |num|
        count[num] += 1
    end

    count.each do |k,v|
        return k if v == 1
    end
end