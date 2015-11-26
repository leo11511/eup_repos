class MoviesController < ApplicationController
 
 	def index
		@movie = Movie.all 
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


