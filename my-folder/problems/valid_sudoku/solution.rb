# @param {Character[][]} board
# @return {Boolean}
def is_valid_sudoku(board)
    return is_horizontal_valid(board) && is_vertical_valid(board) && is3x3_valid(board) && board.all?{ |row| row.length == 9}
end

def is_horizontal_valid(board)
    (0...9).each do |row|
        check = []
        (0...9).each do |column|
            ele = board[row][column]
            return false if check.include?(ele)
            check << ele if ele != "."
        end
    end
    return true
end

def is_vertical_valid(board)
    transpose_board = board.transpose
    (0...9).each do |column|
        check = []
        (0...9).each do |row|
            ele = transpose_board[column][row]
            return false if check.include?(ele)
            check << ele if ele != "."
        end
    end
    return true
end

def is3x3_valid(board)
    (1..9).each do |cube|
        check = []
        case cube

        when 1
            (0...3).each do |row|
                (0...3).each do |column|
                    ele = board[row][column]
                    return false if check.include?(ele)
                    check << ele if ele != "."
                end
            end
        when 2
            (0...3).each do |row|
                (3...6).each do |column|
                    ele = board[row][column]
                    return false if check.include?(ele)
                    check << ele if ele != "."
                end
            end
        when 3
            (0...3).each do |row|
                (6...9).each do |column|
                    ele = board[row][column]
                    return false if check.include?(ele)
                    check << ele if ele != "."
                end
            end        
        when 4
            (3...6).each do |row|
                (0...3).each do |column|
                    ele = board[row][column]
                    return false if check.include?(ele)
                    check << ele if ele != "."
                end
            end        
        when 5
            (3...6).each do |row|
                (3...6).each do |column|
                    ele = board[row][column]
                    return false if check.include?(ele)
                    check << ele if ele != "."
                end
            end        
        when 6
            (3...6).each do |row|
                (6...9).each do |column|
                    ele = board[row][column]
                    return false if check.include?(ele)
                    check << ele if ele != "."
                end
            end        
        when 7
            (6...9).each do |row|
                (0...3).each do |column|
                    ele = board[row][column]
                    return false if check.include?(ele)
                    check << ele if ele != "."
                end
            end        
        when 8
            (6...9).each do |row|
                (3...6).each do |column|
                    ele = board[row][column]
                    return false if check.include?(ele)
                    check << ele if ele != "."
                end
            end        
        when 9
            (6...9).each do |row|
                (6...9).each do |column|
                    ele = board[row][column]
                    return false if check.include?(ele)
                    check << ele if ele != "."
                end
            end
        end
    end
    return true
end