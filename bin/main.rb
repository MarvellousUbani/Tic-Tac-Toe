require_relative "startgame"

puts "Welcome to Tic-Tac-Toe"

puts "Enter your name and symbol, player 1:"
$name1 = gets.chomp()
$symbol1 = gets.chomp()
$player1 = Player.new($name1, $symbol1)

puts "Enter your name and symbol, player 2:"
$name2 = gets.chomp()
$symbol2 = gets.chomp()
$player2 = Player.new($name2, $symbol2)

$new_board = Board.new()

run_game()




