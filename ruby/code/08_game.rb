class Game
	def initialize(title)
		@title = title
		@player = []
	end

	def add_player(neu)
		@player << neu
		
	end

	def play
		puts "#{@title}'s Game"
		@player.each do |neu|
			puts neu.to_s
		end
		@player.each do |aua|
			puts aua.blam
			puts aua.w00t
			puts aua.w00t
			puts aua.to_s
	end
end