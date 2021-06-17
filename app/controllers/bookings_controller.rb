class BookingsController < ApplicationController
  def index
    @bookings = Booking.where(user: current_user)
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @disguise = Disguise.find(params[:disguise_id])
    @booking.disguise = @disguise
    if @booking.save
      redirect_to disguise_bookings_path(@booking), notice: "La résa est faite"
    else
      render disguise_path(@disguise), notice: "pas valide"
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings.path
  end

  def accept
    @booking = Booking.find(params[:id])
    @booking.status = "confirmed"
    @booking.save
    redirect_to bookings_path, notice: "Réservation acceptée !"
  end

  def refuse
    @booking = Booking.find(params[:id])
    @booking.status = "refused"
    @booking.save
    redirect_to bookings_path, notice: "Réservation refusée !"
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
