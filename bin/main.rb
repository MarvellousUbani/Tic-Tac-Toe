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

4.times {
    puts "Player 1: Where would you like to place #{symbol1}?"
    x1 = gets.chomp.to_i()
    y1 = gets.chomp.to_i()
    
    if new_board.position_empty(x1, y1) == false && new_board.invalid_move(x1, y1) == false
       new_board.update_board(symbol1, x1, y1) 
    end
    
    print new_board.update_board(symbol1, x1, y1)
    
    puts "Player 2: Where would you like to place #{symbol2}?"
    x2 = gets.chomp.to_i()
    y2 = gets.chomp.to_i()
    
    if new_board.position_empty(x2, y2) == false &&  new_board.invalid_move(x2, y2) == false
        puts new_board.update_board(symbol1, x1, y1) 
    end
    
    print new_board.update_board(symbol2, x2, y2)
}

# Insert check_win function in above loop
# Use board_not_full function to indicate drawn game
# Insert reset function






