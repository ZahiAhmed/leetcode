# @param {Integer[]} digits
# @return {Integer[]}
def plus_one(digits)
    digits[-1] += 1
    i = digits.length - 1
    while i >= 0
        if digits[i] > 9
            digits[i] = 0
            digits[i-1] += 1 if i > 0
            digits.unshift(1) if i == 0
        end
        i-=1
    end

    return digits
end