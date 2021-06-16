class DisguisesController < ApplicationController
  def index
    if params[:my_disguises]
      @disguises = Disguise.where(user: current_user)
    else
      @disguises = Disguise.all
    end
    @markers = @disguises.geocoded.map do |disguise|
      {
        lat: disguise.latitude,
        lng: disguise.longitude
      }
    end
  end

  def show
    @disguise = Disguise.find(params[:id])
    @booking = Booking.new
  end

  def new
    @disguise = Disguise.new
  end

  def create
    @disguise = Disguise.new(disguise_params)
    @disguise.user = current_user

    if @disguise.save
      redirect_to disguise_path(@disguise)
    else
      render :new
    end
  end

  def edit
    @disguise = Disguise.find(params[:id])
    @disguise.user = current_user

    if @disguise.save
      redirect_to disguise_path(@disguise)
    else
      render :new
    end
  end

  def update
    @disguise = Disguise.find(params[:id])
    @disguise.update(params[:disguise])
  end

  def destroy
    @disguise = Disguise.find(params[:id])
    @disguise.destroy

    redirect_to disguises_path
  end

  private

  def disguise_params
    params.require(:disguise).permit(:title, :description, :price_per_day, :category, :size, :gender, :photo)
  end
end