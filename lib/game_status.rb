# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end
def full?(board){
  
}
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
  win = true
  WIN_COMBINATIONS.each do |combo|
    puts "combo is #{combo}"
    # see if all the letters in those indeces are the same letter
    combo.each do |index|
      win = true
      #puts "index being checked is #{index}"
      #get the winning combos indeces
      puts " letter at position is #{board[index]} first position is #{board[combo[0]]}"
      if board[index] != board[combo[0]] #compare each index with first
        #puts "lost at 1"
        win = false
      end
      if board[index] == " "
        #puts "lost at 2"
        win =  false
      end
      
    end
    
    puts "win is #{win}"
    
    if win == true
      puts "winning combo is #{combo}"
      return combo
    end
    
  end
  #puts "checked all"
  return win
end

won?(["O", "O", " ", "X", "X", "X", " ", " ", " "])
