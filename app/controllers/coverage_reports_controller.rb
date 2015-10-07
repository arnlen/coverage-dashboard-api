class CoverageReportsController < ApplicationController

  # POST /coverage_reports
  def create
    @coverage_report = CoverageReportsManager.new_report(coverage_report_params)

    if @coverage_report.save
      render json: @coverage_report, status: :created, location: @coverage_report
    else
      render json: @coverage_report.errors, status: :unprocessable_entity
    end
  end

  private
    # Only allow a trusted parameter "white list" through.
    def coverage_report_params
      params.require(:coverage_report).permit(:project_id, :percentage, :project_name, :project_branch)
    end
end
