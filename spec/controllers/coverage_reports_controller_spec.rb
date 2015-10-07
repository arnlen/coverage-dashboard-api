require 'rails_helper'

RSpec.describe CoverageReportsController, :type => :controller do

  let(:valid_attributes) {{ project_id: 1, percentage: "42" }}
  let(:invalid_attributes) {{ invalid: "value" }}
  let(:valid_session) { {} }

  describe "POST create" do
    context "with valid params" do
      before do
        allow(CoverageReportsManager).to receive(:new_report).and_return CoverageReport.new(valid_attributes)
        post :create, { coverage_report: valid_attributes }, valid_session
      end
      it { expect(response.status).to eq 201 }
    end

    context "with invalid params" do
      before do
        allow(CoverageReportsManager).to receive(:new_report).and_raise ActionController::ParameterMissing, "project_id"
        post :create, { coverage_report: invalid_attributes }, valid_session
      end
      it { expect(response.body).to include "project_id" }
      it { expect(response.status).to eq 422 }
    end
  end

end
