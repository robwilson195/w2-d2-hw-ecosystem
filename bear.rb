class Bear

  attr_reader :name, :type, :stomach

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  def eat_fish(fish, river)
    river.lose_a_fish(fish)
    @stomach << fish
  end

  def roar
    return "Rawwwwwwrrrr!"
  end

  def food_count
    return @stomach.length
  end

end
