class SightingsController < ApplicationController
    def create
        @sighting = Sighting.create(sighting_param)
        render json: @sighting
    end
    
    def update
        @sighting = Sighting.find(params[:id])
        @sighting.update(sighting_param)
        render json: Sighting.all
    end
    
    def index
        @sightings = Sighting.where(date: params[:start_date]..params[:end_date])
        render json: @sightings
    end
    
    private
    
    def sighting_param
        params.require(:sighting).permit(:animal_id, :date, :lat, :long, :start_date, :end_date)
    end
end