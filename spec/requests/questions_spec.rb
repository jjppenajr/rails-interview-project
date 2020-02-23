require 'rails_helper'

RSpec.describe 'ApiController Questions', type: :request do
  describe 'GET api/questions' do
    subject(:tenant) { create(:tenant) }

    it 'should failed when no  token passed in the headers' do
      get('/api/questions')
      # json = JSON.parse(response.body)
      expect(response.status).to eql(401)
    end

    context 'has valid key'
      it 'should pass if token is valid' do
        headers = { "Authorization" => tenant.api_key }
        get "/api/questions", headers: headers
        expect(response.status).to eql(200)
      end

  end
end
