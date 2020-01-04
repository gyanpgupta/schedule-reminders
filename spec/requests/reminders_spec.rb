require 'rails_helper'

RSpec.describe 'Reminders', type: :request do
  describe 'GET /reminders' do
    let(:current_user) { create(:user) }

    it 'works!' do
      sign_in(current_user)
      get reminders_path
      expect(response).to have_http_status(200)
    end
  end
end
