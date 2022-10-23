# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
    if x.to_s.reverse == x.to_s
        return true
    else
        return false
    end
end