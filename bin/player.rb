require_relative "startgame"

class Player
  attr_reader :name, :symbol

  def initialize(name, symbol)
    @name = name
    @symbol = symbol
  end
end

class Cell
  attr_reader :value

  def initialize(value = "")
    @value = value
  end
end

class Board
  attr_reader :grid

  def initialize
    @grid = [
     ["", "", ""],
     ["", "", ""],
     ["", "", ""]]
  end

  def board_not_full
  	if @grid[0].include?("") || @grid[1].include?("") || @grid[2].include?("")
  		true
    else
    	false
    end	
  end

  def position_empty(x, y)
    return true if grid[x][y].empty?
  end

  def update_board(sym, x, y)
  	if x > 2 || y > 2
      false
  	else
      @grid[x][y] = sym
      @grid
    end  
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
        puts "Win. Game Restarted"
        reset_game()     
        break
      end
    end
  end
  
end

  