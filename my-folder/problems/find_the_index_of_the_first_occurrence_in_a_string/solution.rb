# @param {String} haystack
# @param {String} needle
# @return {Integer}
def str_str(haystack, needle)
    return 0 if haystack == needle
    return -1 if haystack.length < needle.length

    (0...haystack.length).each do | i |
        return i  if (haystack[i,needle.length] == needle)
    end

    return -1
end