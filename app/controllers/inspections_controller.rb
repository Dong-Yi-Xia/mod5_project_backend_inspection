class InspectionsController < ApplicationController

    def index 
        @inspections = Inspection.all
        render json: @inspections
    end


end
