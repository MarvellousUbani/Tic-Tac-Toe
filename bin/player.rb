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
  	@grid[x][y] == ""
  end

  def invalid_move(x, y)
    if x > 2 || y > 2
  	  true
  	end

  def player_win(sym)
    x = []
    y = []

    for i in 0...grid.length
      for j in 0...grid.length
        if grid[i][j] = sym
          x.push(i)
          y.push(j)
        end
      end
    end

    # Diagonal Win
    if x.sort() == y.sort()
      print "You Win"
    end

    if x.all? { |x|  x ==  1 || x == 2 || x == 3 } && y.sort.include?(4) || y.sort.include?(2) || y.sort.include?(3)
  end

end

# func to check if board is not full (if full, drawed game)
# func to check if a position on the board is empty (if not, then a player played there, prompt to try a different position)
# func to check if invalid move made.
# func to check if game was won.
# After each turn, print array to the console, each on new line
# Reset function

# winning combinations

def check_win(sym) #sym = "X" or "Y"
  
  # updated_grid (returned result)
  
  grid = [
       ["X", "X", "O"],
       ["X", "X", "O"],
       ["O", "", ""]
  ]
  
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
      if sym == x.uniq
      puts "You win!"
      break
      end
    end
  end
  
  win?("X")

  