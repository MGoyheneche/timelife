class TripsController < ApplicationController
  def index
  	@trips = Trip.all

  	if @trips.length == 0 # Not very elegant
	  	redirect_to new_trip_url
  	end
  end

  def new
  	@trip = Trip.new
  end

  def create
  	@trip = Trip.new(trip_params)
    @trip.user_id = current_user.id

	  redirect_to @trip if @trip.save
  end

  def show
  	@trip = Trip.find(params[:id])
  end

  private

  def trip_params
    params.require(:trip).permit(:title, :subtitle, :cover)
  end
end
