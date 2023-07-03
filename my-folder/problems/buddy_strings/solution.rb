# @param {String} s
# @param {String} goal
# @return {Boolean}
def buddy_strings(s, goal)
    return false if s.length < 2
    return false if s == goal && s.chars.uniq.length == s.length
    return true if s == goal

    indices = []
    (0...s.length).each do |i|
        indices << i if s[i] != goal[i]
        return false if indices.length > 2
    end

    return false if indices.length != 2

    i = indices[0]
    j = indices[1]
    
    s[i], s[j] = s[j], s[i]

    return true if s == goal
    return false

end

#base case to check if strings are anagrams
#loop to check how many letters are in the same position between 2 strings
#if only 2 letters arent in the same position, check if s with swapped letters == goal

###solution
    #base cases: 
        #string needs to be at least length 2 to swap
        #return false if equal and no duplicate letter
        #must swap letters to return true so check if strings are equal and have a duplicate letter to swap
    #loop through string
        #save every index where the strings characters are different
        #if more than 2 return false
        #return false if not at least 2 as well
    #check if string with letters swapped is equal to goal

