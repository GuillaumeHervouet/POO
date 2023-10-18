require 'pry'
require 'bundler'
Bundler.require

require_relative 'game'
require_relative 'player'

puts "---------------------------------------------------"
puts "| Bienvenue sur 'ILS VEULENT TOUS MA POO' !       |"
puts "| Le but du jeu est d'être le dernier survivant ! |"
puts "---------------------------------------------------"

# Saisie du nom du premier joueur
puts "Entrez le nom du premier joueur:"
player1_name = gets.chomp

# Saisie du nom du deuxième joueur
puts "Entrez le nom du deuxième joueur:"
player2_name = gets.chomp

game = Game.new(player1_name, player2_name)

# (Optionnel)
#binding.pry 

game.combat
