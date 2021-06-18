class DisguisesController < ApplicationController
  def index
    if params[:search].present?
      @disguises = Disguise.search_by_title_and_description(params[:search])
    else
      @disguises = Disguise.all
    end
  end

  def user_index
    if params[:search].present?
      @disguises = Disguise.search_by_title_and_description(params[:search]).where(user: current_user)
    else
      @disguises = Disguise.where(user: current_user)
    end
  end

  def show
    @disguise = Disguise.find(params[:id])
    @booking = Booking.new
    @markers = [{ lat: @disguise.latitude, lng: @disguise.longitude, info_window: render_to_string(partial: "info_window", locals: { disguise: @disguise }), image_url: helpers.asset_url('doush.png') }]
  end

  def new
    @disguise = Disguise.new
  end

  def create
    @disguise = Disguise.new(disguise_params)
    @disguise.user = current_user

    if @disguise.save
      redirect_to my_disguises_path
    else
      render :new
    end
  end

  def edit
    @disguise = Disguise.find(params[:id])
  end

  def update
    @disguise = Disguise.find(params[:id])
    @disguise.update(disguise_params)
    redirect_to disguise_path(@disguise)
  end

  def destroy
    @disguise = Disguise.find(params[:id])
    @disguise.destroy

    redirect_to my_disguises_path
  end

  private

  def disguise_params
    params.require(:disguise).permit(:title, :description, :price_per_day, :category, :size, :gender, :photo, :address)
  end
end
