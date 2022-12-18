require 'rails_helper'

RSpec.describe 'Links', type: :request do
  describe 'GET /links/new' do
    it 'returns http success' do
      user = User.create(email: 'test@gmail.com', password: 'password', password_confirmation: 'password')
      sign_in user
      get new_link_path
      expect(response).to have_http_status(200)
    end
  end

  # Todo:
  # Test that links/create is generating a short_url
  # Test redirection
  # Test for admin page in another file. User should be redirected to root_path when he tries to access it, unless he is an admin.
end
