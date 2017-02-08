class EventMessagesController < ApplicationController

	before_action :set_event

	def index
		@messages = @event.messages
	end

	def show
		@message = @event.messages.find( params[:id] )
	end

	def new
		@message = @event.messages.build
	end

	def create 
		@message = @event.messages.build( message_params )

		if @message.save
			redirect_to event_path(@event)
		else
			render :action => :new
		end
	end

	def edit
		@message = @event.messages.find( params[:id] )
	end

	def update
		@message = @event.messages.find( params[:id] )

		if @message.update( message_params )
			redirect_to event_path(@event)
		else
			render :action => :edit
		end
	end

	def destroy
		@message = @event.messages.find( params[:id] )

		@message.destroy

		redirect_to event_path(@event)
	end

	protected

	def message_params
		params.require(:message).permit(:content)
	end

	def set_event
		@event = Event.find( params[:event_id] )
	end

end
