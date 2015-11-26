module ApplicationHelper
	def format_price(event)
		if event.free?
			raw "<strong>FREE</strong>" 
			"FREE" 
		else 
			number_to_currency(event.price, unit: "€")
		end
	end
end
