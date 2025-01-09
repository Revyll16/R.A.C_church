class SermonsController < ApplicationController

  def index
    @sermons = Sermon.all
  end

  def show
    @sermon = Sermon.find(params[:id])
  end

  def new
    @sermon = Sermon.new
  end

  def create
    @sermon = Sermon.new(sermon_params)
    if @sermon.save
      redirect_to @sermon, notice: 'Sermon was successfully created.'
    else
      render :new
    end
  end

  def edit
    @sermon = Sermon.find(params[:id])
  end

  def update
    @sermon = Sermon.find(params[:id])
    if @sermon.update(sermon_params)
      redirect_to @sermon, notice: 'Sermon was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @sermon = Sermon.find(params[:id])
    @sermon.destroy
    redirect_to sermons_path, notice: 'Sermon was successfully deleted.'
  end

  private

  def sermon_params
    params.require(:sermon).permit(:title, :description, :video_url, :preacher_name, :date)
  end
end
