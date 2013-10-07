class DaysController < ApplicationController
  def show
  end

  def create
  	@Day = Day.new(day_params)

	  redirect_to @Day if @Day.save
  end




  private

  def day_params
    params.require(:day).permit(:city, :country, :date, :title, :description, :trip)
  end
end
