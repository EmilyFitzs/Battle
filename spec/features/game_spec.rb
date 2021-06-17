describe Game do
  game = Game.new
  player = Player.new("Goncalo")
  describe '#attack' do
    it 'reduces hp by 10' do
      game.attack(player)
      expect(player.hp).to eq 40
    end
  end
end