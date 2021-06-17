describe Game do
  let ( :player_1)  { Player.new("Emily") }
  let ( :player_2)  { Player.new("Ziggy") }
  let ( :game ) { Game.new(player_1, player_2) }

  it 'is initialized with two players' do
    expect(game.player_1).to eq player_1
    expect(game.player_2).to eq player_2
  end

  describe '#attack' do
    it 'reduces hp by 10' do
      game.attack(player_2)
      expect(player_2.hp).to eq 40
    end
  end
end