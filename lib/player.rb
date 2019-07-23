
# Creating the Player class
class Player
# Making the name (string), life points (integer) and damages (integer) readable and writable
	attr_accessor :name
	attr_accessor :life_points

# The user enters the name of the players
def initialize(name_player)
    @name = name_player
    @life_points = life_points
    # Initializing life points to 10
    @life_points = 10
end

 # Shows player's life
 def show_state
  	puts "#{name} a #{@life_points} points de vie"
 end

# Inflicts damages to a player
 def gets_damage(damage_got)
  	@life_points -= damage_got
  	if @life_points <= 0
  		puts "Le joueur #{name} a été tué!"
  	end
 end

# The user chooses to attack a player
def attacks(player_attacked)
  	puts "Le joueur #{self.name} attaque le joueur #{player_attacked.name}"
  	damage_got = compute_damage
  	puts "Il lui inflige #{damage_got} points de dommages"
  	player_attacked.gets_damage(damage_got)
end

# Computes a random number of damage
def compute_damage
	return rand(1..6)
end

end
binding.pry