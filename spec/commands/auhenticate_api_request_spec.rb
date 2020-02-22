require 'rails_helper'

RSpec.describe AuthenticateApiRequest do
  subject(:context) { described_class.call(api_key)}
  subject(:tenant) {create(:tenant)}

  describe '.call' do
    context 'when the context is successfull' do
      let(:api_key) { tenant.api_key }

      it 'succeeds' do
        expect(context).to be_success
      end
    end

    context 'when the context is not successful' do
      let(:api_key) { nil }

      it 'fails' do
        expect(context).to be_failure
      end
    end
  end
end
