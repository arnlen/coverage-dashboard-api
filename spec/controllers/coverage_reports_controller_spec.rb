require 'rails_helper'

RSpec.describe CoverageReportsController, :type => :controller do

  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  let(:valid_session) { {} }

  describe "POST create" do
    describe "with valid params" do
      it "creates a new CoverageReport" do
        expect {
          post :create, {:coverage_report => valid_attributes}, valid_session
        }.to change(CoverageReport, :count).by(1)
      end

      it "assigns a newly created coverage_report as @coverage_report" do
        post :create, {:coverage_report => valid_attributes}, valid_session
        expect(assigns(:coverage_report)).to be_a(CoverageReport)
        expect(assigns(:coverage_report)).to be_persisted
      end

      it "redirects to the created coverage_report" do
        post :create, {:coverage_report => valid_attributes}, valid_session
        expect(response).to redirect_to(CoverageReport.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved coverage_report as @coverage_report" do
        post :create, {:coverage_report => invalid_attributes}, valid_session
        expect(assigns(:coverage_report)).to be_a_new(CoverageReport)
      end

      it "re-renders the 'new' template" do
        post :create, {:coverage_report => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

end
