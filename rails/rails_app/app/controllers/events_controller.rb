class EventsController < ApplicationController

	def index
		@events = Event.all
		
	end

	def show
		@event = Event.find(params[:id])

	end

	def showall
		@events = Event.all
	end

	def new
		@event = Event.new
	end

	def create
		
		
		@event = Event.new(event_params)
		if @event.save
		redirect_to event_path(@event.id)	
		else
		render "new"	
	end
end
	def edit
		@event = Event.find(params[:id])
	end

	def update
		@event = Event.find(params[:id])
		
		@event.update(event_params)
		redirect_to event_path(@event.id)
	end

	def destroy
		@event = Event.find(params[:id])
		@event.destroy
		redirect_to events_url
	end
	private
	def event_params
		params.require(:event).permit(:name, :descritpion, :location, :price, :start_at, :image_file, :capacity)
	end
end

