require "rails_helper"

RSpec.describe CoverageReportsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/coverage_reports").to route_to("coverage_reports#index")
    end

    it "routes to #new" do
      expect(:get => "/coverage_reports/new").to route_to("coverage_reports#new")
    end

    it "routes to #show" do
      expect(:get => "/coverage_reports/1").to route_to("coverage_reports#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/coverage_reports/1/edit").to route_to("coverage_reports#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/coverage_reports").to route_to("coverage_reports#create")
    end

    it "routes to #update" do
      expect(:put => "/coverage_reports/1").to route_to("coverage_reports#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/coverage_reports/1").to route_to("coverage_reports#destroy", :id => "1")
    end

  end
end
