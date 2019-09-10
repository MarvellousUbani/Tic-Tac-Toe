# frozen_string_literal: true

class Board
  attr_reader :grid

  def initialize
    @grid = [
      ['', '', ''],
      ['', '', ''],
      ['', '', '']
    ]
  end

  def put_x
    (0..2).each do |i|
      (0..2).each do |j|
        if @grid[i][j] == ''
          @grid[i][j] = 'X'
          return "#{grid[0]}\n#{grid[1]}\n#{grid[2]}\n"
        end
      end
    end
  end

  def update_board(sym, num)
    return false if num > 9

    obj = {
      1 => [0, 0],
      2 => [0, 1],
      3 => [0, 2],
      4 => [1, 0],
      5 => [1, 1],
      6 => [1, 2],
      7 => [2, 0],
      8 => [2, 1],
      9 => [2, 2]
    }
    obj.each do |key, value|
      next unless num == key

      first = value[0]
      second = value[1]
      grid[first][second] = sym
    end
    grid
  end

  def current_board
    grid = @grid
    "#{grid[0]}\n#{grid[1]}\n#{grid[2]}\n"
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
      return true if x.uniq == [sym]
        
    end
  end
end
