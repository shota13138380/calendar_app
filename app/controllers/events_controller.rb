class EventsController < ApplicationController
  before_action :set_beginning_of_week

  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.valid?
      @event.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    if @event.update(event_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    event = Event.find(params[:id])
    event.destroy
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
