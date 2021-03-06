class EventsController < ApplicationController
	before_action :set_event, :only => [:show , :edit , :update, :destroy]
	def index
		@events = Event.all
		@events = Event.page(params[:page]).per(5)
	end
	def new
		@event = Event.new
	end

	def create
		@event = Event.new(event_params)
		if @event.save
		   redirect_to events_url
		   flash[:notice]="WOW, the event has been created!!"
		else
			render :action => :new
		end
	end
	def show
		
	end

	def edit
	
	end
	def update
		
		if @event.update(event_params)
		   redirect_to event_url(@event)
		   flash[:notice]="WOW, the event has been updated!!"
		else
		  render :action => :edit
		end
	end
	def destroy

		@event.destroy
		flash[:alert]="Well, the event #{@event.name} has been destroyed~"
		redirect_to events_url
	end



private
	def event_params
		params.require(:event).permit(:name, :description, :isbn)
	end
	def set_event
		@event = Event.find(params[:id])
	end
end
