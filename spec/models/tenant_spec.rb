require 'rails_helper'

RSpec.describe Tenant, type: :model do
  subject {create(:tenant)}

  context 'Validations' do
    it { should validate_presence_of(:name) }
    it 'should have an api_key upon creation' do
      expect(subject.api_key).not_to be_nil
    end
  end

  context 'Associations' do
    it { should have_many(:activity_logs) }
  end
end
