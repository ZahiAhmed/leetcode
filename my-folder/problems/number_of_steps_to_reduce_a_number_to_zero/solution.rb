# @param {Integer} num
# @return {Integer}
def number_of_steps(num)
    count = 0
    while num != 0
        if num%2 == 0 
            num /= 2
            count+= 1
        else
            num -= 1
            count += 1
        end
    end
    return count
end