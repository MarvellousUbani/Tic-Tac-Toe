require_relative "player"

def run_game
  4.times {
    puts "#{$name1}: Where would you like to place #{$symbol1}?"
    x1 = gets.chomp.to_i()
    y1 = gets.chomp.to_i()
    $new_board.update_board($symbol1, x1, y1)
    $new_board.check_win($symbol1) 
    
    while $new_board.update_board($symbol1, x1, y1) == false
      puts "Invalid move. Please Re-enter Position #{$name1}"
      x1 = gets.chomp.to_i()
      y1 = gets.chomp.to_i()
      $new_board.update_board($symbol1, x1, y1)
      $new_board.check_win($symbol1)
      
    end
      print "#{$new_board.grid[0]}\n#{$new_board.grid[1]}\n#{$new_board.grid[2]}\n"
    
    puts "#{$name2}: Where would you like to place #{$symbol2}?"
    x2 = gets.chomp.to_i()
    y2 = gets.chomp.to_i()
    $new_board.update_board($symbol2, x2, y2)
    $new_board.check_win($symbol2) 
    
    while $new_board.update_board($symbol2, x2, y2) == false
      puts "Invalid move. Please Re-enter Position #{$name2}"
      x2 = gets.chomp.to_i()
      y2 = gets.chomp.to_i()
      $new_board.update_board($symbol2, x2, y2)
      $new_board.check_win($symbol2)
      
    end
      print "#{$new_board.grid[0]}\n#{$new_board.grid[1]}\n#{$new_board.grid[2]}\n"
  }
end