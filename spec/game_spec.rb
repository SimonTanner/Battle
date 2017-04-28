require 'game'

describe Game do
  let(:player_1) { double :player}
  let(:player_2) {double :player }
  subject(:game) { Game.new(player_1,player_2) }

  describe '#attack' do
    it 'damages other player' do
      expect(player_2).to receive(:receive_damage)
      game.attack
    end
  end

  describe '#player_1' do
    it 'returns Player 1' do
      expect(game.player_1).to eq player_1
    end
  end

  describe '#player_2' do
    it 'returns Player 2' do
      expect(game.player_2).to eq player_2
    end
  end

  describe '#whos_turn' do
    it 'switches the players\' turn' do
      expect(game.whos_turn).to eq player_2
    end
  end

end
