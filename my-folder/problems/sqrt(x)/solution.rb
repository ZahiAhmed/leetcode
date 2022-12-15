# @param {Integer} x
# @return {Integer}
def my_sqrt(x)#6
    (0..x).each do |i| #3
       return i if i * i == x #9
       return i - 1 if i * i > x #9
    end
end