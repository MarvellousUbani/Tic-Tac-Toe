require_relative "player"

# puts "Welcome to Tic-Tac-Toe"

# puts "Enter your name and symbol, player 1:"
# name1 = gets.chomp()
# symbol1 = gets.chomp()
# player1 = Player.new(name1, symbol1)

# puts "Enter your name and symbol, player 2:"
# name2 = gets.chomp()
# symbol2 = gets.chomp()
# player2 = Player.new(name2, symbol2)

# puts "Player One Details"
# puts player1.name
# puts player1.symbol

# puts "Player Two Details"
# puts player2.name
# puts player2.symbol

new_board = Board.new()

print new_board.grid


puts new_board.position_empty(2,1)







