class CarsController < ApplicationController
  def index
      cars = Car.all
      render json: cars
  end

  def reports
    car = Car.find(params[:id])
    render json: car.location_reports
  end
end
