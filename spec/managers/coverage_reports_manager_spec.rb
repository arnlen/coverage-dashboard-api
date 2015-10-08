require 'rails_helper'

RSpec.describe CoverageReportsManager do

  describe "#create_report" do

    context "with invalid params" do
      let(:invalid_params) {{ invalid: "value" }}
      it { expect{ CoverageReportsManager.create_report invalid_params }.to raise_error ActionController::ParameterMissing }
    end

    context "with valid params" do
      context "when a coverage report doesn't yet exist for today" do
      end

      context "when a coverage report exists for today" do
      end
    end
  end

end
