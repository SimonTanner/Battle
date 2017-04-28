require 'player'

describe Player do
  subject(:red) { Player.new('Red') }
  subject(:blue) { Player.new('Blue') }

  describe '#name' do
    it 'returns the name' do
      expect(red.name).to eq 'Red'
    end
  end

  describe '#receive_damage' do
    it 'reduces HP by 10' do
      expect { blue.receive_damage }.to change { blue.hp }.by(-10)
    end
  end
end
