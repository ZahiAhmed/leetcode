# @param {Integer[]} nums
# @return {Integer[]}
def running_sum(nums)
    newArr = []
    sum = 0;
    nums.each do |num| 
        sum += num
        newArr << sum 
    end
    newArr
end