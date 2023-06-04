# @param {String[]} strs
# @return {String[][]}
def group_anagrams(strs)
    sorted_strs = strs.map { |str| str.chars.sort.join}
    anagrams = Hash.new { |h,k| h[k] = [] }

    sorted_strs.each.with_index do |str, i|
        anagrams[str] << strs[i]
    end

    array = []
    anagrams.each {|k,v| array << v}
    array
end

# map through strs: sort all strings in strs
# create hash with default values as empty array
# iterate through mapped array
# push value of strs[i] into hash at key of new strs[i]
# itterate through hash and push each value into an array to return