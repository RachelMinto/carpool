require 'spec_helper'

describe UsersController do
  describe 'GET new' do
    before { get :new }
    
    it "sets @user" do
      expect(assigns(:user)).to be_instance_of(User)
    end

    it "renders a new user form" do
      expect(response).to render_template('new')
    end    
  end
end
