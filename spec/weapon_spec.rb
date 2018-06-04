require_relative '../lib/weapon.rb'

describe Weapon do
  subject(:weapon) { described_class.new }
  describe '#pick' do
    it 'picks a random weapon' do
      allow(weapon).to receive(:rand).and_return 2
      expect(weapon.pick).to eq 'Scissors'
    end
  end
end
