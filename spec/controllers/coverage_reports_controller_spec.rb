require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe CoverageReportsController, :type => :controller do

  # This should return the minimal set of attributes required to create a valid
  # CoverageReport. As you add validations to CoverageReport, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # CoverageReportsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all coverage_reports as @coverage_reports" do
      coverage_report = CoverageReport.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:coverage_reports)).to eq([coverage_report])
    end
  end

  describe "GET show" do
    it "assigns the requested coverage_report as @coverage_report" do
      coverage_report = CoverageReport.create! valid_attributes
      get :show, {:id => coverage_report.to_param}, valid_session
      expect(assigns(:coverage_report)).to eq(coverage_report)
    end
  end

  describe "GET new" do
    it "assigns a new coverage_report as @coverage_report" do
      get :new, {}, valid_session
      expect(assigns(:coverage_report)).to be_a_new(CoverageReport)
    end
  end

  describe "GET edit" do
    it "assigns the requested coverage_report as @coverage_report" do
      coverage_report = CoverageReport.create! valid_attributes
      get :edit, {:id => coverage_report.to_param}, valid_session
      expect(assigns(:coverage_report)).to eq(coverage_report)
    end
  end

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

  describe "PUT update" do
    describe "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested coverage_report" do
        coverage_report = CoverageReport.create! valid_attributes
        put :update, {:id => coverage_report.to_param, :coverage_report => new_attributes}, valid_session
        coverage_report.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested coverage_report as @coverage_report" do
        coverage_report = CoverageReport.create! valid_attributes
        put :update, {:id => coverage_report.to_param, :coverage_report => valid_attributes}, valid_session
        expect(assigns(:coverage_report)).to eq(coverage_report)
      end

      it "redirects to the coverage_report" do
        coverage_report = CoverageReport.create! valid_attributes
        put :update, {:id => coverage_report.to_param, :coverage_report => valid_attributes}, valid_session
        expect(response).to redirect_to(coverage_report)
      end
    end

    describe "with invalid params" do
      it "assigns the coverage_report as @coverage_report" do
        coverage_report = CoverageReport.create! valid_attributes
        put :update, {:id => coverage_report.to_param, :coverage_report => invalid_attributes}, valid_session
        expect(assigns(:coverage_report)).to eq(coverage_report)
      end

      it "re-renders the 'edit' template" do
        coverage_report = CoverageReport.create! valid_attributes
        put :update, {:id => coverage_report.to_param, :coverage_report => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested coverage_report" do
      coverage_report = CoverageReport.create! valid_attributes
      expect {
        delete :destroy, {:id => coverage_report.to_param}, valid_session
      }.to change(CoverageReport, :count).by(-1)
    end

    it "redirects to the coverage_reports list" do
      coverage_report = CoverageReport.create! valid_attributes
      delete :destroy, {:id => coverage_report.to_param}, valid_session
      expect(response).to redirect_to(coverage_reports_url)
    end
  end

end
