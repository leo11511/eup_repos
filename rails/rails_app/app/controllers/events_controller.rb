class EventsController < ApplicationController

	def index
		@events = Event.all
		
	end

	def show
		@event = Event.find(params[:id])

	end

	def new
		@event = Event.new
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
