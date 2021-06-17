class Player
  attr_accessor :name, :hp

  def initialize(name)
    @name = name
    @hp = 50
  end

  def reduce_hp(amount)
    @hp -= amount
  end

end