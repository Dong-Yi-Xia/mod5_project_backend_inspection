class ReportsController < ApplicationController

    before_action :authorized, except: [:index]

    def index 
        @reports = Report.all
        render json: @reports
    end

    def update
        # byebug
        @report = Report.find(params[:id])
        @report.update(report_params)
        render json: @report
    end
    
    private

    def report_params
        params.permit(:id, :grade, :note)
    end

end
