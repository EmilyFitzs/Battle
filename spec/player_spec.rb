describe Player do
  it 'returns name' do
    name = 'Emily'
    player = Player.new(name)
    expect(player.name).to eq name 
  end
end