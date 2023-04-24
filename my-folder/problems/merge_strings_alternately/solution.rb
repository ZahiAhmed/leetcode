# @param {String} word1
# @param {String} word2
# @return {String}
def merge_alternately(word1, word2)
    merged_word = ""

    while word1.length > 0 && word2.length > 0
        merged_word << word1[0]
        word1 = word1[1..-1]
        merged_word << word2[0]
        word2 = word2[1..-1]
    end

    return merged_word + word1 + word2
end