class Player
  INITIAL_LIVES = 3
  attr_reader :name
  attr_reader :lives

  def initialize(name)
    @name = name
    @lives = INITIAL_LIVES
  end

  def lose_a_life
    @lives -= 1
  end

  def is_dead?
    lives <= 0
  end

  def get_score()
    "#{@name}: #{"💖" * @lives}#{"💀" * (INITIAL_LIVES - @lives)}"
  end

  def INITIAL_LIVES
    INITIAL_LIVES
  end
end
