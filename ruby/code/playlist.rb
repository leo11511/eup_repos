class Playlist
	def initialize(name)
		@name =name
		@movies = []
	end

	def add_movie(movie)
		@movies << movie 
	end
	def play
		puts "#{@name}'s PLAYLIST"
		@movies.each do |movie|
			puts movie
		end
	end
	def to_s
		@movies.size.to_s
	end
end