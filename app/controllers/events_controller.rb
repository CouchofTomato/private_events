class EventsController < ApplicationController
  def index
    @past_events = Event.past
    @future_events = Event.upcoming
  end

  def new
    @event = current_user.created_events.build
  end

  def create
    @event = current_user.created_events.build(event_params)
    if @event.save
      redirect_to @event
    else
      render 'new'
    end
  end

  def show
    @event = Event.find(params[:id])
    @event_attendees = @event.attendees
  end
  
  private
  
    def event_params
      params.require(:event).permit(:name)
    end
end
