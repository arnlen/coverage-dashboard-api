require "rails_helper"

RSpec.describe CoverageReportsController, :type => :routing do
  describe "routing" do

    it "routes to #create" do
      expect(:post => "/coverage_reports").to route_to("coverage_reports#create")
    end

  end
end
