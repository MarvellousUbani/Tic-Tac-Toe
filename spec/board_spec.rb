# frozen_string_literal: true

require './lib/board'

RSpec.describe Board do
  let(:board) { Board.new }

  describe '#update_board' do
    it 'returns false if a number greater than 9 is entered' do
      expect(board.update_board('X', 10)).to eql(false)
    end
    it 'should update the board in the first position if 1 is entered' do
      result = [['X', '', ''], ['', '', ''], ['', '', '']]
      expect(board.update_board('X', 1)).to eql(result)
    end
    it 'should update the board in the fifth position if 5 is entered' do
      result = [['', '', ''], ['', 'X', ''], ['', '', '']]
      expect(board.update_board('X', 5)).to eql(result)
    end
    it 'should update the board in the fourth position if 4 is entered' do
      result = [['', '', ''], ['O', '', ''], ['', '', '']]
      expect(board.update_board('O', 4)).to eql(result)
    end
    it 'should update the board in the ninth position if 9 is entered' do
      result = [['', '', ''], ['', '', ''], ['', '', 'O']]
      expect(board.update_board('O', 9)).to eql(result)
    end
  end

  describe '#check_win' do
    it 'returns true if given symbol appears three times on the horizontal axis' do
      board.grid[0] = %w[X X X]
      expect(board.check_win('X')).to eql(true)
    end
    it 'returns true if given symbol appears three times on the vertical axis' do
      board.grid[0] = ['X', '', '']
      board.grid[1] = ['X', '', '']
      board.grid[2] = ['X', '', '']
      expect(board.check_win('X')).to eql(true)
    end
    it 'returns true if given symbol appears three times diagonally' do
      board.grid[0] = ['', '', 'X']
      board.grid[1] = ['', 'X', '']
      board.grid[2] = ['X', '', '']
      expect(board.check_win('X')).to eql(true)
    end
    it 'returns false if board is full and no win is possible (drawn game)' do
      board.grid[0] = %w[X O O]
      board.grid[1] = %w[O X X]
      board.grid[2] = %w[X X O]
      expect(board.check_win('X')).not_to eq(true)
    end
  end

  describe '#current_board' do
    it 'prints the game board to the console when invoked' do
      result = "[\"\", \"\", \"\"]\n[\"\", \"\", \"\"]\n[\"\", \"\", \"\"]\n"
      expect(board.current_board).to eql(result)
    end
  end

  describe '#put_x' do
    it 'prints an "X" in the remaining empty position' do
      board.grid[0] = %w[X O O]
      board.grid[1] = ['O', 'X', '']
      board.grid[2] = %w[X X O]
      result = "[\"X\", \"O\", \"O\"]\n[\"O\", \"X\", \"X\"]\n[\"X\", \"X\", \"O\"]\n"
      expect(board.put_x).to eql(result)
    end
  end
end
