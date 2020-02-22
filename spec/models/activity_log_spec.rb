require 'rails_helper'

RSpec.describe ActivityLog, type: :model do
  context 'Validations' do
    it { should validate_presence_of(:action) }
    it { should validate_presence_of(:success) }
  end

  context 'Associations' do
    it { should belong_to :actor }
  end
end
