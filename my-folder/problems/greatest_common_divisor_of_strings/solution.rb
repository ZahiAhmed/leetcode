# @param {String} str1
# @param {String} str2
# @return {String}
def gcd_of_strings(str1, str2)
    return str1 if str1 == str2 

    if str1.length < str2.length
        short = str1
        long = str2
    else
        short = str2
        long = str1
    end
    
    gcd = ''
    (0...short.length).each do |i|
        (i...short.length).each do |j|
            substring = short[i..j]
            if substring.length > gcd.length && long.include?(substring) && short.length % substring.length == 0 && long.length % substring.length == 0
                divides = false
                testlong = substring
                testshort = substring
                
                while testlong.length != long.length
                    testlong += substring
                end

                while testshort.length != short.length
                    testshort += substring
                end

                divides = true if long.include?(testlong) && short.include?(testshort)

                if divides
                    gcd = substring
                end

            end
        end
    end

    return gcd
end