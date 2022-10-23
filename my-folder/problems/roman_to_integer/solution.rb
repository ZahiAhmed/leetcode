# @param {String} s
# @return {Integer}
def roman_to_int(s)
    hash = {
        "I" => 1, 
        "V" => 5, 
        "X" => 10, 
        "L" => 50, 
        "C" => 100, 
        "D" => 500, 
        "M" => 1000
    }
    
    i=0
    num = 0
    while s[i+1] != nil
        if hash[s[i]] < hash[s[i+1]]
            num -= hash[s[i]]
        else
            num += hash[s[i]]
        end
        i += 1
    end
    return num += hash[s[i]]
    
end