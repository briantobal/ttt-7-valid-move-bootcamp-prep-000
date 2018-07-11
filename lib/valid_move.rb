def position_empty?(board, index)
  board[index] == ' '
end

def position_taken?(board, index)
  !position_empty?(board, index)
end

def valid_move?(board, index)
  index.between?(0,8) && position_empty?(board, index)
end