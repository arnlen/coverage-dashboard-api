require 'rails_helper'

RSpec.describe "CoverageReports", :type => :request do
  describe "GET /coverage_reports" do
    it "works! (now write some real specs)" do
      get coverage_reports_path
      expect(response).to have_http_status(200)
    end
  end
end
