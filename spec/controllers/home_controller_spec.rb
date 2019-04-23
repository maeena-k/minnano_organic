require 'rails_helper'

RSpec.describe HomeController, type: :controller do
  describe 'index action' do
    before do
      get :index
    end

    it 'responds successfully' do
      expect(response).to be_successful
    end

    it 'returns a 200 status' do
      expect(response).to have_http_status 200
    end
  end

  describe 'about action' do
    before do
      get :about
    end

    it 'responds successfully' do
      expect(response).to be_successful
    end

    it 'returns a 200 status' do
      expect(response).to have_http_status 200
    end
  end
end
