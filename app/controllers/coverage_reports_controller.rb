class CoverageReportsController < ApplicationController
  before_action :set_coverage_report, only: [:show, :update, :destroy]

  # GET /coverage_reports
  def index
    @coverage_reports = CoverageReport.all

    render json: @coverage_reports
  end

  # GET /coverage_reports/1
  def show
    render json: @coverage_report
  end

  # POST /coverage_reports
  def create
    @coverage_report = CoverageReport.new(coverage_report_params)

    if @coverage_report.save
      render json: @coverage_report, status: :created, location: @coverage_report
    else
      render json: @coverage_report.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /coverage_reports/1
  def update
    if @coverage_report.update(coverage_report_params)
      render json: @coverage_report
    else
      render json: @coverage_report.errors, status: :unprocessable_entity
    end
  end

  # DELETE /coverage_reports/1
  def destroy
    @coverage_report.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coverage_report
      @coverage_report = CoverageReport.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def coverage_report_params
      params.require(:coverage_report).permit(:project_id, :percentage)
    end
end
