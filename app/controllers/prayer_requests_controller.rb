# app/controllers/prayer_requests_controller.rb
class PrayerRequestsController < ApplicationController
  before_action :set_prayer_request, only: [:destroy]

  def index
    @prayer_requests = PrayerRequest.all
  end

  def new
    @prayer_request = PrayerRequest.new
  end

  def create
    @prayer_request = PrayerRequest.new(prayer_request_params)

    if @prayer_request.save
      redirect_to prayer_requests_path, notice: 'Prayer request was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @prayer_request.destroy
    redirect_to prayer_requests_path, notice: 'Prayer request was successfully deleted.'
  end

  private

  # Set the prayer request for the destroy action
  def set_prayer_request
    @prayer_request = PrayerRequest.find(params[:id])
  end

  def prayer_request_params
    params.require(:prayer_request).permit(:name, :email, :message, :anonymous)
  end
end
