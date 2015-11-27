class MoviesController < ApplicationController
 
 	def index
		@movies = Movie.all 
	end

	def show
		
		@movie = movie.find(params[:id])
	end
	def new
		@movie = movie.new
	end
	def create
			@movie = movie.new(movie_params)
			@movie.save
			redirect_to movie_path(@movie.id)
	end
	def edit
		@movie = movie.find(params[:id])
	end
	def update
		@movie = movie.find(params[:id])
		@movie.update(movie_params)
		redirect_to movie_path(@movie.id)
	end
	def destroy
		@movie = movie.find(params[:id])
		@movie.destroy
		redirect_to movies_url
	end
	private
		def movie_params
			params.require(:movie).permit(:title, :rating, :total_gross, :description, :website, :release, :pledging)
		end
end





	def create
		
		permitted_params = params.require(:event).permit(:name, :descritpion, :location, :price, :start_at)
		@event = Event.new(permitted_params)
		@event.save
		redirect_to event_path(@event.id)		
	end

	def edit
		@event = Event.find(params[:id])
	end

	def update
		@event = Event.find(params[:id])
		permitted_params = params.require(:event).permit(:name, :descritpion, :location, :price, :start_at)
		@event.update(permitted_params)
		redirect_to event_path(@event.id)
	end

	def destroy
		@event = Event.find(params[:id])
		@event.destroy
		redirect_to events_url
	end
	private
	def event_params
		params.require(:event).permitt(:name, :descritpion, :location, :price, :start_at)
	end
end