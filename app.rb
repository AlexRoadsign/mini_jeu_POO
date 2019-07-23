require 'bundler'
Bundler.require

# Accessing to the needed files
require_relative 'lib/game'
require_relative 'lib/player'

# Creating all players
player1 = Player.new("Josiane")
player2 = Player.new("José")

# Starting the fight until one dies
while 0 < player1.life_points && 0 < player2.life_points

    # Presenting all players before the fight
    puts "Voici l'état des joueurs"
    puts player1.show_state
    puts player2.show_state

    # Starting the fight
    puts "Passons à la phase d'attaque :"

    # Player 1 will start attacking Player 2
    player1.attacks(player2)
    # If Player 1 kills Player 2
    break if player1.life_points <= 0

    # Player 2 will attack player 1
    player2.attacks(player1)
    # If Player 2 kills Player 1
    break if player2.life_points <= 0

end

#binding.pry