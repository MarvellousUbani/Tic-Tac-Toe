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

puts "Player 1: Where would you like to place #{symbol1}?"
x1 = gets.chomp()
y1 = gets.chomp()

if new_board.position_empty(x1, y1) == false &&  !new_board.invalid_move(x1, y1)
	puts new_board.update_board(symbol1, x1, y1) 
end


puts "Player 2: Where would you like to place #{symbol2}?"
x2 = gets.chomp()
y2 = gets.chomp()

print new_board.grid


new_board.update_board("X", 0, 1)

print new_board.grid

