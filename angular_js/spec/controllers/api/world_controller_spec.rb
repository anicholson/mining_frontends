require 'rails_helper'

RSpec.describe Api::WorldController, :type => :controller do

  describe 'GET show' do
    it 'returns http success' do
      get :show
      expect(response).to be_success
    end

    it 'returns JSON data' do
      get :show
      expect(response.content_type).to eq('application/json')
    end
  end
end
