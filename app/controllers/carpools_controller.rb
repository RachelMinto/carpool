class CarpoolsController < ApplicationController
  before_action :require_user, only: [:new, :create]

  def index
    @carpools = Carpool.all.where(status: :approved)
  end

  def new
    @carpool = Carpool.new
  end

  def create
    @carpool = Carpool.new(carpool_params.merge!(user: current_user))

    if @carpool.save
      flash['success'] = 'Carpool has been created succesfully.'  
      redirect_to carpools_path
    else
      render 'new'
    end
  end

  private

  def carpool_params
    params.require(:carpool).permit(:parking_address, :city, :state, 
      :zipcode, :am_start, :am_end, :pm_start, :pm_end,
      :total_seats)
  end  
end  