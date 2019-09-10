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
    if num > 9
      return false
    else
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
    end

    grid
  end

  def current_board
    grid = @grid
    "#{grid[0]}\n#{grid[1]}\n#{grid[2]}\n"
  end

  def reset_game
    @grid = [
      ['', '', ''],
      ['', '', ''],
      ['', '', '']
    ]
    run_game
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
      next unless x.uniq == [sym]

      true
      reset_game
      break
    end
  end
end
