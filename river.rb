class River

  attr_reader :name, :fishes

  def initialize(name, fishes)
    @name = name
    @fishes = fishes
  end

  def lose_a_fish(dead_fish)
    @fishes.delete(dead_fish)
  end

end
