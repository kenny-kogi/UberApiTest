class LocationReportsController < ApplicationController

  def create
    car = Car.find_by(licence: create_params[:licence])

    report  = car.location_reports.create(
      latitude: create_params[:latitude],
      longitude: create_params[:longitude],
      device_id: create_params[:device_id]
    )
    render json: report, status: 201
  end  

  def create_params
    params.permit(:license, :latitude, :longitude, :device_id)
  end
end