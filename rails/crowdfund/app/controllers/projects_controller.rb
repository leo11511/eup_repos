class ProjectsController < ApplicationController
	def index
		@fundraisings = Fundraising.all

	end
end