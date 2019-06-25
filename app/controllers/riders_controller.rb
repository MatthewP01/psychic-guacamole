class RidersController < ApplicationController

  def new
    @rider = Rider.new
    @rollercoasters = Rollercoaster.all
    render :new
  end

  def create
    @rider = Rider.create(rider_params)
    redirect_to "/riders"
  end


  def index
    @riders = Rider.all
    render :index
  end


  def show
    @rider = Rider.find(params[:id])
    render :show
  end

  def edit
    @rider = Rider.find(params[:id])
    @rollercoasters = Rollercoaster.all
    render :edit
  end

  def update
    @rider = Rider.find(params[:id])
    @rider.update(rider_params)
    @rider.save
    redirect_to rider_path(@rider)
  end

  def destroy
    @rider = Rider.find(params[:id])
    @rider.destroy
    redirect_to riders_path
  end

  private

  def rider_params
    params.require(:rider).permit(:name, rollercoaster_ids: [])
  end
end
