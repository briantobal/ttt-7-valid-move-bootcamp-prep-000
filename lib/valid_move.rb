# code your #valid_move? method here

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
require 'pry'
def position_taken?(board, index)
  binding.pry
  board[index] != ' '
end

def valid_movee?(board, index) 
  if index >= 9 
  	false 
  elsif position_taken?(board, index) 
  	false 
  elsif index.between?(0,8) 
  	true 
  else board[index] != “X” || board[index] != “O” 
  	true 
  end 
end


def valid_move?(board, index)
  #binding.pry
  index.between?(0,8) && !position_taken?(board, index)
end