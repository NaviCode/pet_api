module Api
  module V1
    class PetsController < ApplicationController
      before_action :set_pet, only: [:show, :update, :destroy]
    
      # GET /pets
      def index
        @pets = Pet.all
        render json: @pets
      end
      def addHunger
        p = Pet.first
        p.hunger += 2
        p.save
        render json: {added_hunger:true}
      end
      def addFitness
        p = Pet.first
        p.fitness += 2
        p.save
        render json: {added_fitness: true}
      end
      # GET /pets/1
      def show
        render json: @pet
      end
    
      # POST /pets
      def create
        @pet = Pet.new(pet_params)
    
        if @pet.save
          render json: @pet
        else
          render json: @pet.errors, status: :unprocessable_entity
        end
      end
    
      # PATCH/PUT /pets/1
      def update
        if @pet.update(pet_params)
          render json: @pet
        else
          render json: @pet.errors, status: :unprocessable_entity
        end
      end
    
      # DELETE /pets/1
      def destroy
        @pet.destroy
      end
    
      private
        # Use callbacks to share common setup or constraints between actions.
        def set_pet
          @pet = Pet.find(params[:id])
        end
    
        # Only allow a trusted parameter "white list" through.
        def pet_params
          params.require(:pet).permit(:name, :health, :fitness, :lastFed, :hunger, :user_id, :lastPlayed)
        end
    end    
  end  
end
