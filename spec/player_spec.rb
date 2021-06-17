describe Player do
  name = 'Emily'
  let ( :player ) { Player.new(name) }

  it 'returns name' do
    expect(player.name).to eq name 
  end

  it 'has initial hp of 50' do
    expect(player.hp).to eq 50
  end

  it 'attack reduces hp' do
    player.reduce_hp(10)
    expect(player.hp).to eq 40
  end
end