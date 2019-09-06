require_relative "player"


def run_game
  # if $new_board.check_win($symbol1) != true && $new_board.board_not_full == false
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
      # if $new_board.check_win($symbol1) == true
      #   puts "Player 1 wins. Game restarted"
      #   $new_board.reset_game() 
      # end
    end

    print $new_board.update_board($symbol1, x1, y1)
    
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
      # if $new_board.check_win($symbol1) == true
      #   puts "Player 1 wins. Game restarted"
      #   $new_board.reset_game() 
      # end
    end
    print $new_board.update_board($symbol2, x2, y2)
  }
    # else
    #   $new_board = Board.new
    # end
end