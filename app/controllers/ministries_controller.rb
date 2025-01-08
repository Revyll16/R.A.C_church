class MinistriesController < ApplicationController
  def index
    @ministries = Ministry.all
  end

  def show
    @ministry = Ministry.find(params[:id])
  end

  def new
    @ministry = Ministry.new
  end

  def create
    @ministry = Ministry.new(ministry_params)
    if @ministry.save
      Rails.logger.info("Ministry created successfully")
      redirect_to @ministry, notice: 'Ministry was successfully created.'
    else
      Rails.logger.error("Failed to create ministry: #{@ministry.errors.full_messages}")
      render :new
    end
  end


  def edit
    @ministry = Ministry.find(params[:id])
  end

  def update
    @ministry = Ministry.find(params[:id])
    if @ministry.update(ministry_params)
      redirect_to @ministry, notice: 'Ministry was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @ministry = Ministry.find_by(id: params[:id])
    if @ministry
      @ministry.destroy
      Rails.logger.info("Ministry deleted successfully")
      redirect_to ministries_path, notice: 'Ministry was successfully deleted.'
    else
      Rails.logger.error("Ministry not found with id #{params[:id]}")
      redirect_to ministries_path, alert: 'Ministry not found.'
    end
  end


  private

  def ministry_params
    params.require(:ministry).permit(:name, :description, :leader_name)
  end
end
