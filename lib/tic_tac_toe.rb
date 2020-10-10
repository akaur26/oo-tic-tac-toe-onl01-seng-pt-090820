class TicTacToe

  WIN_COMBINATIONS = [
    [0,1,2], # top_row 
    [3,4,5], # middle_row 
    [6,7,8], # bottom_row 
    [0,3,6], # left_column 
    [1,4,7], # center_column 
    [2,5,8], # right_column 
    [0,4,8], # left_diagonal
    [6,4,2] 
  ]
  
  def initialize(board = nil)
    @board = Array.new(9, " ")
  end
  
  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end

  def input_to_index(user_input)
    new_val = user_input.to_i
    return new_val -1
  end
  
  def move(index, token)
    if token == "X"
    @board[0] = token
  else if token == "O"
    @board[4] = token
  end
  end