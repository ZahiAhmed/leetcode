# @param {Integer[][]} matrix
# @return {Integer[]}
def spiral_order(matrix)
    return matrix[0] if matrix.length <= 1 && matrix[0].is_a?(Array)
    m = matrix.length
    n = matrix[0].length


    spiral = matrix[0]

    if n == 1 
        (1...m).each do |i|
            spiral << matrix[i][0]
        end

        return spiral
    end


(1...m).each do |j| 
    #going down
    (j...m-j).each do |i| 
        spiral << matrix[i][-j]
    return spiral if spiral.length == m * n
    end

    #going left from bottom
    i = n-j
    while i >= j
        spiral << matrix[-j][i]
        i-=1
    return spiral if spiral.length == m * n
    end

    
    #going up
    i = m-j
    while i >= j
        spiral << matrix[i][j-1]
        i-=1
    return spiral if spiral.length == m * n
    end

    #going right from top
    (j...n-j).each do |i|
        spiral << matrix[j][i]
    return spiral if spiral.length == m * n
    end


end

    return spiral
end