# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5],  # Middle row
  # ETC, an array for each win combination
  [6,7,8], #bottom row

  [0,3,6], #left column
  [1,4,7], #middle column
  [2,5,8], #right column

  [0,4,8], #top left bottom right diagonal
  [2,4,6], #top right bottol left diagonal
]



def won?(board)
  howManyMoves = 0
  confirmedWin = false

  board.each do |space|

    if space == "X" || space == "O"
      howManyMoves += 1
    end

  end

  if howManyMoves == 0 #game not over at 0 moves
    return confirmedWin

  end


    WIN_COMBINATIONS.each do |array|
      confirmedWin = board.all? |space2|
      space == "X"
      if confirmedWin == true
        break
      end

      return confirmedWin

    end


end
