# frozen_string_literal: true

require './lib/player'

RSpec.describe Player do
  let(:player) { Player.new('Holden', 'O') }

  describe '#initialize' do
    it 'creates a player instance who’s name is passed to it as a parameter' do
      result = 'Holden'
      expect(player.name).to eql(result)
    end

    it "creates a player instance who's symbol is passed to it as a parameter" do
      result = 'O'
      expect(player.symbol).to eql(result)
    end
  end
end
