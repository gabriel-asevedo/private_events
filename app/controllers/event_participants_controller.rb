class EventParticipantsController < ApplicationController
  before_action :authenticate_user!

  def create
    @event = Event.find(params[:event_id])
    if @event
      current_user.attend(@event)
      redirect_to @event, notice: "You are now participating in this event!"
    else
      redirect_to root_path, alert: "Event not found."
    end
  end
end
