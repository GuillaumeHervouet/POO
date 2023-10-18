# lib/game.rb
require 'pry'
require_relative 'player'

class Game
  attr_accessor :player1, :player2

  def initialize(player1_name, player2_name)
    @player1 = Player.new(player1_name)
    @player2 = Player.new(player2_name)
  end

  def combat
    while @player1.life_points > 0 && @player2.life_points > 0
      # Présentation des états des joueurs
      puts "Voici l'état de chaque joueur :"
      @player1.show_state
      @player2.show_state
      puts "---------------------------------------------------"
      puts "C'est au tour de #{@player1.name} de jouer !"
      puts "Voulez-vous attaquer ou passer votre tour ? (a/p)"
      action = gets.chomp.downcase

      if action == 'a'
        @player1.attacks(@player2)
      else
        puts "#{@player1.name} passe son tour !"
      end

      # Si le joueur 2 est encore en vie, c'est son tour
      if @player2.life_points > 0
        puts "---------------------------------------------------"
        puts "C'est au tour de #{@player2.name} de jouer !"
        puts "Voulez-vous attaquer ou passer votre tour ? (a/p)"
        action = gets.chomp.downcase

        if action == 'a'
          @player2.attacks(@player1)
        else
          puts "#{@player2.name} passe son tour !"
        end
      end

      puts "---------------------------------------------------"
    end
  end
end
