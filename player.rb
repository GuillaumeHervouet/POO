class Player
  attr_accessor :name, :life_points

  def initialize(name)
    @name = name
    @life_points = 10
  end

  def show_state
    puts "#{@name} a #{@life_points} points de vie"
  end

  def gets_damage(damage_received)
    @life_points -= damage_received

    if @life_points <= 0
      @life_points = 0
      puts "le joueur #{@name} a été tué !"
    end
  end

  def attacks(target)
    damage_dealt = rand(1..10) # Dégâts aléatoires entre 1 et 10
    puts "#{@name} attaque #{target.name} et lui inflige #{damage_dealt} points de dégâts !"
    target.gets_damage(damage_dealt)
  end
end

  