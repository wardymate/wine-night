class EventsController < ApplicationController
  before_action :authenticate_user!

  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    Event.create(event_params)
    redirect_to '/events'
  end

  def show
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:venue, :date, :guest_number)
  end
end
