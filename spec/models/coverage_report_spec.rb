require 'rails_helper'

RSpec.describe CoverageReport, :type => :model do
  it { is_expected.to validate_presence_of :project_id }
  it { is_expected.to validate_presence_of :percentage }
end
