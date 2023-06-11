# @param {Integer[]} numbers
# @param {Integer} target
# @return {Integer[]}
def two_sum(numbers, target)
    pair = []

    i = 0
    j = numbers.length - 1

    while i < j 
        if numbers[i] + numbers[j] == target
            return [i+1,j+1]
        elsif numbers[i] + numbers[j] < target
            i += 1
        else
            j -= 1
        end
    end

end