class Movie < ActiveRecord::Base
	def under?
		self.total_gross.blank? || self.total_gross<5000000 #self bedeutet es wendet es auf die aktuelle Methode an ohne self geht es auch.
	end
end
