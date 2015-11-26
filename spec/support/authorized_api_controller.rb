require 'rails_helper'

RSpec.shared_examples 'authorized_api_controller' do
  describe 'authorization' do
    it 'returns forbidden request' do
      allow(controller).to receive(:index).and_raise(Pundit::NotAuthorizedError)

      get :index, format: :json

      expect(response.status).to eq(403)
    end
  end
end
