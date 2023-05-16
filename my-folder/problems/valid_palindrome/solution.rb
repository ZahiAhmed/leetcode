# @param {String} s
# @return {Boolean}
def is_palindrome(s)
    s.downcase.gsub(/[^0-9a-z]/,'').reverse == s.downcase.gsub(/[^0-9a-z]/,'')
    # s.eql?(s.reverse)
    # s == s.reverse
    # i = 0
    # j = s.length - 1
    # while i <= j
    #     return false if s[i] != s[j]
    #     i+=1
    #     j-=1
    # end

    # return true
end