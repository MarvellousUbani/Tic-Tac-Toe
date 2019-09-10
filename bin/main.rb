require './lib/player.rb'
require './lib/board.rb'

puts "Welcome to Tic-Tac-Toe"

def run_game
  puts "Enter your name, player 1:"
  name1 = gets.chomp()
  symbol1 = "X"
  player1 = Player.new(name1, symbol1)


  puts "Enter your name, player 2:"
  name2 = gets.chomp()
  symbol2 = "O"
  player2 = Player.new(name2, symbol2)

  new_board = Board.new()

  4.times {
    puts "#{player1.name}: Where would you like to place #{player1.symbol}?"
    num1 = gets.chomp.to_i()
    new_board.update_board(symbol1, num1)
    new_board.check_win(symbol1)
    
    while new_board.update_board(symbol1, num1) == false
      puts "Invalid move. Please Re-enter Position #{name1}"
      num1 = gets.chomp.to_i()
      new_board.update_board(symbol1, num1)
      new_board.check_win(symbol1)
    end

    print new_board.current_board()
    
    puts "#{player2.name}: Where would you like to place #{player2.symbol}?"
    num2 = gets.chomp.to_i()
    new_board.update_board(symbol2, num2)
    new_board.check_win(symbol2)
    
    while new_board.update_board(symbol2, num2) == false
      puts "Invalid move. Please Re-enter Position #{name2}"
      num2 = gets.chomp.to_i()
      new_board.update_board(symbol2, num2)
      new_board.check_win(symbol2)
    end

    print new_board.current_board()
  }
  print "It's a draw\n"
  print new_board.put_x()
end

run_game()






