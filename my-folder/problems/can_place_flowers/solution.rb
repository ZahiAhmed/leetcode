# @param {Integer[]} flowerbed
# @param {Integer} n
# @return {Boolean}
def can_place_flowers(flowerbed, n)

    if flowerbed.length == 1 && flowerbed[0] == 0 && n > 0 
        flowerbed[0] = 1
        n-=1
    end

    if flowerbed[0] == 0 && flowerbed[1] == 0 && n > 0
        flowerbed[0] = 1
        n-=1
    end

    (1...flowerbed.length-1).each do |i|  
        if flowerbed[i] == 0 && flowerbed[i+1] == 0 && flowerbed[i-1] == 0 && n > 0
            flowerbed[i] = 1
            n-=1
        end
    end

    if flowerbed[-1] == 0 && flowerbed[-2] == 0 && n > 0
        flowerbed[0] = 1
        n-=1
    end

    return n == 0
end