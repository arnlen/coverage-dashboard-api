class CoverageReportSerializer < ActiveModel::Serializer
  attributes :id, :project_id, :percentage, :created_at, :updated_at
end
