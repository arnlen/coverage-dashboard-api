class Project < ActiveRecord::Base
  has_many :coverage_reports
end
