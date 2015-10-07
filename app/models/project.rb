class Project < ActiveRecord::Base
  has_many :coverage_reports

  validates :name, :branch, :repo_url, presence: true
end