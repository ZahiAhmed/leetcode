# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)

    return strs[0] if strs.length <= 1
    
    prefix = ""

    return prefix if strs[0] == ""
    
    check = true
    i = 0
    
    while check != false 
        
        char = strs[0][i] if i < strs[0].length
        
        strs.each do |word|

            if word[i] != char || i > word.length
                check = false 
            end

        end

        if check == true
            prefix << char 
        end

        i += 1

    end

    return prefix

end
