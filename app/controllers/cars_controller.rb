class CarsController < ApplicationController
   skip_before_action :verify_authenticity_token

  def create
    car = Car.new(create_params)

    if car.save
      render json: car
    end    
  end

  def index
      cars = Car.all
      render json: cars
  end

  def reports
    car = Car.find(params[:id])
    render json: car.location_reports
  end

  def create_params
    params.require(:car).permit(:licence)
  end
end
