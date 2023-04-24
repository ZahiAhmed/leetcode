# @param {Integer[]} stones
# @return {Integer}
def last_stone_weight(stones)
    return 0 if stones.length == 0
    return stones[0] if stones.length == 1 

    sorted_stones = stones.sort
    max = sorted_stones.pop(2)

    if max[0] != max[1] 
        sorted_stones << max[1] - max[0]
    end

    return last_stone_weight(sorted_stones) 

end