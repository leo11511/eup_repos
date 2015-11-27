module ApplicationHelper
	def format_price(event)
		if event.free?
			raw "<strong>FREE</strong>" 
			"FREE" 
		else 
			number_to_currency(event.price, unit: "€")
		end
	end
	def image_for(event)
		if event.image_file.blank?
			image_tag 'dummy.jpeg', size: "100x200"
		else
			image_tag event.image_file
		end
	end
end
