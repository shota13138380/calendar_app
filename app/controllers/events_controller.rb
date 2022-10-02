class EventsController < ApplicationController
  before_action :set_beginning_of_week

  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    Event.create(event_params)
    redirect_to root_path
  end

  private

  def event_params
    params.require(:event).permit(:title, :content, :start_time)
  end

  def set_beginning_of_week
    Date.beginning_of_week = :sunday
  end  

end
