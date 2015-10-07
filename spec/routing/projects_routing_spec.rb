require "rails_helper"

RSpec.describe ProjectsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/projects").to route_to("projects#index")
    end

    it "routes to #create" do
      expect(:post => "/projects").to route_to("projects#create")
    end

    it "routes to #update" do
      expect(:put => "/projects/1").to route_to("projects#update", :id => "1")
    end

  end
end
