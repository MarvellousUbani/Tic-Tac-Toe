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

  def invalid_move(x, y){
  	if x > 2 || y > 2
  		true
  	end
  }

  def playerWin(X)
  end

end

# func to check if board is not full (if full, drawed game)
# func to check if a position on the board is empty (if not, then a player played there, prompt to try a different position)
# func to check if invalid move made.
# func to check if game was won.
# After each turn, print array to the console, each on new line



