module ApplicationHelper
	def format_total_gross(movie)
		if movie.under?
			"Flop!" 
		else 
			number_to_currency(movie.total_gross, unit: "€")
		end
	end
end
