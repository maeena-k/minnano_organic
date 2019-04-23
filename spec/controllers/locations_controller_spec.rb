require 'rails_helper'

RSpec.describe LocationsController, type: :controller do
  let!(:user) { create(:user) }

  describe 'show action' do
    context "as a signed_in user" do
      before do
        sign_in user
        get :show
      end

      it 'responds successfully' do
        expect(response).to be_successful
      end

      it 'returns a 200 status' do
        expect(response).to have_http_status 200
      end
    end

    context "as a user without signing in" do
      before do
        get :show
      end

      it 'responds unsuccessfully' do
        expect(response).not_to be_successful
      end

      it 'returns a 302 status' do
        expect(response).to have_http_status 302
      end
    end
  end
end
