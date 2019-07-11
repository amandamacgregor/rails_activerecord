class AnimalsController < ApplicationController
    def create
        @animal = Animal.create(animal_param)
        render json: @animal
    end
    
    def index
        @animals = Animal.all
        render json: @animals
    end
    
    def update
        @animal = Animal.find(params[:id])
        @animal.update(animal_param)
        render json: Animal.all
    end
    
    def show
        @animal = Animal.find(params[:id])
        render json: @animal.to_json({:include => :sightings})
    end
    
    def destroy
        @animal = Animal.find(params[:id])
        @animal.destroy
        render json: Animal.all
    end
    
    
    private
    
    def animal_param
        params.require(:animal).permit(:name, :latin_name, :kingdom)
    end
end
