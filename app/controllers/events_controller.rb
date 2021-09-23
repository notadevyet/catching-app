class EventsController < ApplicationController
  def create
    @event = Event.new(event_params)
    @event.user = current_user
    @event.save
    redirect_to dashboard_path
  end

  def new
    @event = Event.new
  end

  private

  def event_params
    params.require(:event).permit(:name)
  end
end
