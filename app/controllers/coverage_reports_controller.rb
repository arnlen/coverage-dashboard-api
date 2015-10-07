class CoverageReportsController < ApplicationController

  # POST /coverage_reports
  def create
    @coverage_report = CoverageReportsManager.create_report(coverage_report_params)
    render json: @coverage_report, status: :created
  rescue ActionController::ParameterMissing => e
    render json: e.message, status: :unprocessable_entity
  end

  private
    # Only allow a trusted parameter "white list" through.
    def coverage_report_params
      params.require(:coverage_report).permit(:project_id, :percentage, :project_name, :project_branch)
    end
end
