class EventsController < ApplicationController
  before_action :set_event, only: %i[edit update destroy]

  # GET /events
  def index
    @events = Event.all.order(start_date: :asc)
  end

  # def show
  #   @event = Event.find(params[:id])
  # end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to events_path, notice: 'Event was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end


  def edit
    @event = Event.find(params[:id])
  end

  # PATCH/PUT /events/:id
  def update
    if @event.update(event_params)
      redirect_to @event, notice: 'Event was successfully updated.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to events_path, notice: 'Event was successfully deleted.'
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_event
    @event = Event.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def event_params
    params.require(:event).permit(:title, :description, :start_date, :end_date, :location)
  end
end
