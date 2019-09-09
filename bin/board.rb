class Board
  attr_reader :grid
  
  def initialize
    @grid = [
      ["", "", ""],
      ["", "", ""],
      ["", "", ""]
    ]
  end
  
  def board_not_full
    if @grid[0].include?("") || @grid[1].include?("") || @grid[2].include?("")
      true
    else
      false
    end	
  end
  
  def update_board(sym, num)
    if num > 9
      return false
    end

    case num
    when 1
      grid[0][0] = sym
    when 2
      grid[0][1] = sym
    when 3
      grid[0][2] = sym
    when 4
      grid[1][0] = sym
    when 5
      grid[1][1] = sym
    when 6
      grid[1][2] = sym
    when 7
      grid[2][0] = sym
    when 8
      grid[2][1] = sym
    when 9
      grid[2][2] = sym
    end
    grid  
  end

  def current_board
    grid = @grid
    return "#{grid[0]}\n#{grid[1]}\n#{grid[2]}\n"
  end
 
  def position_empty(x, y)
    return true if grid[x][y] == ""
  end
  
  def reset_game
    @grid = [
      ["", "", ""],
      ["", "", ""],
      ["", "", ""]
    ]
    run_game()
  end
  
  def check_win(sym)
    winning_combinations = [
      [grid[0][0], grid[0][1], grid[0][2]], 
      [grid[1][0], grid[1][1], grid[1][2]],
      [grid[2][0], grid[2][1], grid[2][2]],
      [grid[0][0], grid[1][0], grid[2][0]],
      [grid[0][1], grid[1][1], grid[2][1]],
      [grid[0][2], grid[1][2], grid[2][2]],
      [grid[0][0], grid[1][1], grid[2][2]],
      [grid[0][2], grid[1][1], grid[2][0]]
    ]
    winning_combinations.each do |x|
      if [sym] == x.uniq
        true
        "#{sym} Wins. Game Restarted\n"
        reset_game()     
        break
      end
    end
  end
end

#board_not_full not used
#position_empty not used