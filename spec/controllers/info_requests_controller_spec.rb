require 'spec_helper'

describe InfoRequestsController do
  describe "GET index" do
    let(:requests) { Fabricate(:info_request)}
    before do
      sign_in_admin
      get :index
    end

    it "Should set @info_requests" do
      expect(assigns(:info_requests)).to match_array([requests])
    end

    it "Should render the index template" do
      expect(response).to render_template('index')
    end
  end

  describe "POST create" do
    context "With valid carpool" do
      before do
        sign_in_user
        carpool = Fabricate(:carpool)
        post :create, id: carpool.id
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