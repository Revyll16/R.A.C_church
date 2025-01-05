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
      redirect_to @ministry, notice: 'Ministry was successfully created.'
    else
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
    @ministry = Ministry.find(params[:id])
    @ministry.destroy
    redirect_to ministries_path, notice: 'Ministry was successfully deleted.'
  end

  private

  def ministry_params
    params.require(:ministry).permit(:name, :description, :leader_name)
  end
end
