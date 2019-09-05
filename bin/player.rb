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
    @grid = Array.new(3) { Array.new(3) { Cell.new(3) } }
  end

  def 
end

# func to check if board is not full (if full, drawed game)
# func to check if a position on the board is empty (if not, then a player played there)
# func to check if invalid move made.
# func to check if game was won.


grid = [
    [" ", " ", " "],
    [" ", " ", " "],
    [" ", " ", " "]
]

