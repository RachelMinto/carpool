require 'spec_helper'

describe InfoRequestsController do
  describe "POST create" do
    context "With valid carpool" do
      before do
        sign_in_user
        post :create, info_request: Fabricate.attributes_for(:info_request)
      end

      it "Should create a request for info" do
        expect(InfoRequest.count).to eq(1)
      end

      it "Should redirect to the carpools_path" do
        expect(response).to redirect_to(carpools_path)
      end

      it "Creates an info_request associated with the user" do
        expect(current_user.info_requests.first).to eq(InfoRequest.first)
      end
    end
  end
end