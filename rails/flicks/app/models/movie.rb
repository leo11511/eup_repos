class Movie < ActiveRecord::Base
	def flop?
		self.total_gross.blank? || self.total_gross < 5000000
	end
end
