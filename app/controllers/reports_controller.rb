class ReportsController < ApplicationController

    before_action :authorized, except: [:index]

    # def index 
    #     @reports = Report.all
    #     render json: @reports
    # end

    def create
        @report = Report.create(report_params)
        render json: @report
    end

    def update
        @report = Report.find(params[:id])
        @report.update(report_params)
        render json: @report
    end
    
    def destroy
        @report = Report.find(params[:id])
        @report.destroy
        render json: @report
    end





    private

    def report_params
        params.permit(:id, :grade, :note, :inspection_id)
    end

end
