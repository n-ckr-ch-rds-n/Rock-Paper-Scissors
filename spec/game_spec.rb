describe Game do
  describe '#outcome' do
    subject(:game) { described_class.new }
    it 'returns the outcome of a game' do
      expect(game.outcome('Rock', 'Paper', 'John')).to eq 'Computer wins!''
    end
  end
end
