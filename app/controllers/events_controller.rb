class EventsController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  before_action :set_beginning_of_week

  def index
    if user_signed_in?
      @events = Event.where(user_id: current_user.id).order("start_time ASC")
    else
      @events = []
    end
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @event = Event.find(params[:id])
    redirect_to root_path unless current_user.id == @event.user_id
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
    params.require(:event).permit(:title, :content, :start_time).merge(user_id: current_user.id)
  end

  def set_beginning_of_week
    Date.beginning_of_week = :sunday
  end  
end
