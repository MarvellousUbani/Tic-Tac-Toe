require_relative "player"

puts "Welcome to Tic-Tac-Toe"

puts "Enter your name and symbol, player 1:"
name1 = gets.chomp()
symbol1 = gets.chomp()
player1 = Player.new(name1, symbol1)

puts "Enter your name and symbol, player 2:"
name2 = gets.chomp()
symbol2 = gets.chomp()
player2 = Player.new(name2, symbol2)

new_board = Board.new()

def run_game
  if new_board.check_win(symbol1) != true && new_board.board_not_full == false
    4.times {
      puts "#{name1}: Where would you like to place #{symbol1}?"
      x1 = gets.chomp.to_i()
      y1 = gets.chomp.to_i()
      new_board.update_board(symbol1, x1, y1)
      new_board.check_win(symbol1) 
    
    while new_board.update_board(symbol1, x1, y1) == false
      puts "Invalid move. Please Re-enter Position #{name1}"
      x1 = gets.chomp.to_i()
      y1 = gets.chomp.to_i()
      new_board.update_board(symbol1, x1, y1)
      new_board.check_win(symbol1)
    end
    print new_board.update_board(symbol1, x1, y1)
    
    puts "#{name2}: Where would you like to place #{symbol2}?"
    x2 = gets.chomp.to_i()
    y2 = gets.chomp.to_i()
    new_board.update_board(symbol2, x2, y2)
    new_board.check_win(symbol2) 
    
    while new_board.update_board(symbol2, x2, y2) == false
      puts "Invalid move. Please Re-enter Position #{name2}"
      x2 = gets.chomp.to_i()
      y2 = gets.chomp.to_i()
      new_board.update_board(symbol2, x2, y2)
      new_board.check_win(symbol2)
    end
    print new_board.update_board(symbol2, x2, y2)
  }
    else
      new_board = Board.new
    end
end

run_game()


# Insert check_win function in above loop
# Use board_not_full function to indicate drawn game
# Insert reset function

# run_game. Game runs if no win or draw (!check_win) or if !(board_full)
# if check_win or board_full game resets.




