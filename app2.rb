require 'bundler'
Bundler.require

# Accessing to the needed files
require_relative 'lib/game'
require_relative 'lib/player'

# Creating all players
player1 = HumanPlayer.new("Josiane")
player2 = HumanPlayer.new("José")

#acceuil
puts "--------------------------------------------------"
puts "!!!Bienvenu sur le Jeu ILS VEULENT TOUS MA POO!!"
puts "--------------------------------------------------"

#player init
puts "What is your name?"
HumanPlayer.name = gets.chomp.to_s
puts "Welcome #{HumanPlayer.name}"
