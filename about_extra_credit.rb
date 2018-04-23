# EXTRA CREDIT:
#
# Create a program that will play the Greed Game.
# Rules for the game are in GREED_RULES.TXT.
#
# You already have a DiceSet class and score function you can use.
# Write a player class and a Game class to complete the project.  This
# is a free form assignment, so approach it however you desire.



class Play_Game

  puts "How many players will play the game?"
  number_of_players = $stdin.read
  array_of_players = [number_of_players]

  for i in 0...number_of_players
    puts "Player number" + i + ", Please enter your name"
    player_name = $stdin.read
    array_of_players << Player(player_name).new
  end

  array_of_players.each  do |i|
   puts i.player_name

  end

  class Player
    attr_accessor  :player_name
    attr_accessor :total_score
    attr_accessor :current_turn_score
    def initialize(name)
      @player_name = name
    end
  end

end