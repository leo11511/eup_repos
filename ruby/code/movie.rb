class Movie
	# attr_writer :title
	# attr_reader :title
	attr_accessor :title
		def initialize(ptitle, prank=0)
			@title =ptitle.capitalize
			@rank = prank
		end	
		# # def title
		# # @title
		# # end
		# attr_reader :title

		# # def title=(ptitle)
		# # 	@title = ptitle
		# # end
		# attr_writer :title
		
		def thumbs_up
				@rank += 1
				#@rank = @rank + 1
		end
		def thumbs_down
				@rank -= 1
		end
		def to_s
			"#{@title} hat ein Ranking von: #{@rank}."
		end
end