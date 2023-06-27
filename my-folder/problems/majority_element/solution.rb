# @param {Integer[]} nums
# @return {Integer}
def majority_element(nums)
    count = Hash.new {|h,k| h[k] = 0}
    max = 0
    ele = 0
    nums.each do |num|
        count[num] += 1
        if count[num] > max
            max = count[num]
            ele = num
        end
    end
    ele 
end