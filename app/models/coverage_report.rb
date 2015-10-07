class CoverageReport < ActiveRecord::Base
  validates :project_id, :percentage, presence: true
end
