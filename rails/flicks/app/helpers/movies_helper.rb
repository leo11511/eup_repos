module MoviesHelper
	def ein_mehrzahl
		if @movies.size == 1
			"Film"
		else
			"Filme"
		end
	end


end
