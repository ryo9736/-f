class PropertiesController < ApplicationController
  before_action :set_property, only: [:show, :edit, :update, :destroy]
  def index
    @properties = Property.all
  end

  def new
    @property = Property.new
    2.times { @property.stations.build }
  end

  def create
    @property = Property.new(property_params)
      if @property.save
        redirect_to property_path(@property.id)
      else
        render:'new'
      end
  end

  def show
  end

  def edit
  end

  def update
    @property = Property.update(property_params)
    redirect_to properties_path
  end

  def destroy
    @property.destroy
    redirect_to properties_path
  end

  private

  def property_params
    params.require(:property).
    permit(:name,:price,:age,:adress,:content,
            stations_attributes: [:route_name,:station_name,:time])
  end

  def set_property
    @property = Property.find(params[:id])
  end
end


