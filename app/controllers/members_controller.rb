class MembersController < ApplicationController
  def index
    @members = Member.all
  end

  def show
    @member = Member.find(params[:id])
  end

  def new
    @member = Member.new
  end

  def create
    @member = Member.new(member_params)
    if @member.save
      redirect_to @member, notice: 'Member was successfully added.'
    else
      render :new
    end
  end

  def edit
    @member = Member.find(params[:id])
  end

  def update
    @member = Member.find(params[:id])
    if @member.update(member_params)
      redirect_to @member, notice: 'Member details were successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @member = Member.find_by(id: params[:id])
    if @member
      Rails.logger.debug("Deleting member: #{@member.inspect}")
      @member.destroy
      redirect_to members_path, notice: 'Member was successfully removed.'
    else
      Rails.logger.debug("Member not found with ID: #{params[:id]}")
      redirect_to members_path, alert: 'Member not found.'
    end
  end



  private

  def member_params
    params.require(:member).permit(:name, :email, :phone, :role)
  end
end
