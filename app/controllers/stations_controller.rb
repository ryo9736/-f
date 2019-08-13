class StationsController < ApplicationController
  def index
    @stations = Station.all
  end

  def new
    @station = Station.new
  end

  def create
    @station = station.new(station_params)
    if @station.save
    redirect_to properties_path
    else
    render:'new'
    end
  end

  private

  def station_params
    params.require(:station).permit(:route_name,:station_name,:time)
  end
end
