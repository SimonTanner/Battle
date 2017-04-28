require 'game'

describe Game do
let(:blue) { double :player}
let(:red) {double :player }

  describe '#attack' do
    it 'damages other player' do
      expect(red).to receive(:receive_damage)
      subject.attack(red)
    end
  end

end
