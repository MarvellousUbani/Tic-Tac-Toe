require './lib/player'
require './lib/board'

RSpec.describe Board do
  let(:board) {Board.new}

  describe "#update_board" do
    it "returns false if a number greater than 9 is entered" do
      expect(board.update_board("X", 10)).to eql(false)
    end
    it "should update the board in the first position if 1 is entered" do
      result = [["X", "", ""], ["", "", ""], ["", "", ""]]
      expect(board.update_board("X", 1)).to eql(result)
    end
    it "should update the board in the fifth position if 5 is entered" do
      result = [["", "", ""], ["", "X", ""], ["", "", ""]]
      expect(board.update_board("X", 5)).to eql(result)
    end
    it "should update the board in the fourth position if 4 is entered" do
      result = [["", "", ""], ["O", "", ""], ["", "", ""]]
      expect(board.update_board("O", 4)).to eql(result)
    end
    it "should update the board in the ninth position if 9 is entered" do
      result = [["", "", ""], ["", "", ""], ["", "", "O"]]
      expect(board.update_board("O", 9)).to eql(result)
    end
  end


  describe "#check_win" do
    it "returns true if given symbol appears three times on the horizontal axis" do
      board.grid[0] = ["X","X","X"]
      expect(board.check_win("X")).to eql(true)
    end

    it "returns true if given symbol appears three times on the vertical axis" do
      board.grid[0] = ["X","",""]
      board.grid[1] = ["X","",""]
      board.grid[2] = ["X","",""]
      expect(board.check_win("X")).to eql(true)
    end

    it "returns true if given symbol appears three times diagonally" do
      board.grid[0] = ["","","X"]
      board.grid[1] = ["","X",""]
      board.grid[2] = ["X","",""]
      expect(board.check_win("X")).to eql(true)
    end

  end

end