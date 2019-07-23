
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

class HumanPlayer < Player
	#giving the accesssors
	attr_accessor :weapon_level

	#the initialize function
	def initialize(name)
		super(name)
		@life_points = 100
		@weapon_level = 1
	end

	# Shows player's life
 	def show_state
  		puts "#{name} a #{@life_points} points de vie & une arme de niveau #{weapon_level}"
 	end

 	#inflige un choix d'arme de 1 a 6
 	def compute_damage
    rand(1..6) * @weapon_level
  end

 	def search_weapon
 		dice = rand(1..6) #lance le dé a 6 faces
 		puts "Tu as trouvé une arme de force: #{dice}"
 		if dice > weapon_level
 			weapon_level = dice #si la valeur du dé est superieur à un alors la valeur du dé représente la force de la nouvelle arme
 			puts "Wooooow! Quelle arme de ouf!!"
 		else 
 			puts "C'est de la merde!!"
 		end
 	end

 	def health_pack 
 		health_pack = rand(1..6)
 		if health_pack == 1
 			puts "Tu n'as rien trouvé!!"
 		elsif health_pack = rand(2..5)
 			@life_points += 50
 			puts "Bravo! Tu as trouvé un pack de +5Opts de vie!!"
 		else health_pack == 6
 			@life_points += 80
 			puts "Wow!!!Tu as trouvé un pack de +80pts de vie!!"
 		end
 	end














end



#binding.pry