require 'rails_helper'

RSpec.describe LocationsController, type: :controller do

  describe 'show action' do
    before do
      @user = FactoryBot.create(:user)
      sign_in @user
      get :show
    end

    it 'responds successfully' do
      expect(response).to be_successful
    end

    it 'returns a 200 status' do
      expect(response).to have_http_status 200
    end
  end
end
