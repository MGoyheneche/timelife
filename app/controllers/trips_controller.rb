class TripsController < ApplicationController
  def index

    @user = User.find_by_username("MGoyheneche")
  	@trips = @user.trips

    puts "\n********************\n"
    p @trips


  	if !@trips
	  	redirect_to new_trip_path
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
    @day = Day.new
  end

  private

  def trip_params
    params.require(:trip).permit(:title, :subtitle, :cover)
  end
end
