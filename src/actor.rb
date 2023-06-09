# frozen_string_literal: true

# class actor
class Actor
  def initialize(name)
    @name = name
  end

  def ready?
    sleep 3
    true
  end

  def act
    'I love you, baby'
  end

  def fall_off_ladder
    'Call my agent! no way'
  end

  def light_on_fire
    false
  end
end
