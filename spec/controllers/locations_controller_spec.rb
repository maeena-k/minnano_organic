require 'rails_helper'

RSpec.describe LocationsController, type: :controller do

  describe 'show action' do
    before do
      get :show
    end

    it 'responds successfully' do
      expect(respond).to be_successful
    end
  end
end
