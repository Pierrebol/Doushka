class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
    @my_bookings = Booking.where(user: current_user)
  end

  def create
    @booking = Booking.new(booking_params)
    @disguise = Disguise.find(params[:disguise_id])
    @booking.user = current_user
    @booking.disguise = @disguise
    @booking.status = "pending"
    # @booking.owner_id = @booking.disguise.user_id
    if @booking.save
      redirect_to bookings_path, notice: "La résa est faite"
    else
      redirect_to new_user_session_path
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings.path
  end

  def accept
    @booking = Booking.find(params[:id])
    @disguise = @booking.disguise
    @booking.status = "confirmed"
    @booking.save
    redirect_to disguise_path(@disguise)
  end

  def refuse
    @booking = Booking.find(params[:id])
    @disguise = @booking.disguise
    @booking.status = "refused"
    @booking.save
    redirect_to disguise_path(@disguise)
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
