# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
  ]
def won?(board)
  #check each of the combos of wins
  WIN_COMBINATIONS.each do |combo|
    # see if all the letters in those indeces are the same letter
    combo.each? do |index| 
      #get the winning combos indeces
      board[index] == board[combo[0]] #compare each index with the first entry
    end
  end
end

all_odd = [1,3].all? do |number|
 number.odd? # Will evaluate to true for 1, true for 3
end #=> true

