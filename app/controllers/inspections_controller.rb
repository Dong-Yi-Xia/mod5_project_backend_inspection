class InspectionsController < ApplicationController
    
    before_action :authorized, only: [:create]

    def index 
        @inspections = Inspection.all
        render json: @inspections
    end

    def create
        @restaurant = Restaurant.find_by(id: params[:id])
        if !@restaurant
            @restaurant = Restaurant.create(restaurant_params)
        else
            @restaurant
        end
     
        @inspection = @user.inspections.create(inspection_params)
        render json: @inspection
    end


    private

    def inspection_params
        params.permit(:date, :time, :restaurant_id)
    end

    def restaurant_params
        params.permit(:id, :name, :thumb, :address, :lat, :lon)
    end
end
