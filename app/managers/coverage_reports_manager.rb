class CoverageReportsManager

  def self.create_report coverage_report_params
    raise ActionController::ParameterMissing, :project_id unless coverage_report_params.include?(:project_id)
  end

end