# @param {Integer} n
# @return {Integer}
def subtract_product_and_sum(n)
    n.digits.inject{|acc, ele| acc *ele} - n.digits.sum
end