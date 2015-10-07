require 'rails_helper'

RSpec.describe ProjectsController, :type => :controller do

  let(:valid_attributes) {
    { name: "Test Project", branch: "develop", repo_url: "http://github.com/arnlen/sqool_coverage_api" }
  }
  let(:invalid_attributes) {{ invalid: "data" }}
  let(:valid_session) { {} }

  describe "GET index" do
    before do
      project = Project.create! valid_attributes
      get :index, {}, valid_session
    end

    it { expect(JSON.parse(response.body)["projects"][0].keys).to include "coverage_reports" }
    it { expect(response.status).to eq 200 }
  end

  describe "POST create" do
    context "with valid params" do
      before { post :create, { project: valid_attributes }, valid_session }
      it { expect(response.status).to eq 201 }
    end

    context "with invalid params" do
      before { post :create, { project: invalid_attributes }, valid_session }
      it { expect(response.status).to eq 422 }
    end
  end

  describe "PUT update" do
    context "with valid params" do
      let(:new_attributes) {{ name: "Test Project updated" }}
      before do
        project = Project.create! valid_attributes
        put :update, { id: project.to_param, project: new_attributes }, valid_session
      end
      it { expect(response.status).to eq 200 }
    end

    describe "with invalid params" do
      before do
        project = Project.create! valid_attributes
        put :update, { id: project.to_param, project: invalid_attributes }, valid_session
      end
      it { expect(response.status).to eq 200 }
    end
  end

end
