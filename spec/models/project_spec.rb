require 'rails_helper'

RSpec.describe Project, :type => :model do
  it { is_expected.to have_many :coverage_reports }
  it { is_expected.to validate_presence_of :name }
  it { is_expected.to validate_presence_of :branch }
  it { is_expected.to validate_presence_of :repo_url }
end
