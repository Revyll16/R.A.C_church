class DonationsController < ApplicationController
  def index
    @donations = Donation.all
  end

  def new
    @donation = Donation.new
  end

  def create
    @donation = Donation.new(donation_params)
    if @donation.save
      redirect_to donations_path, notice: 'Thank you for your donation!'
    else
      render :new
    end
  end

  private

  def donation_params
    params.require(:donation).permit(:amount, :frequency, :message)
  end
end
