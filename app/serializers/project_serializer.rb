class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :name, :branch, :repo_url

  has_many :coverage_reports
end
