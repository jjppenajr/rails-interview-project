require 'rails_helper'

RSpec.describe Question, type: :model do
  context 'Validations' do
    it { should validate_presence_of(:title) }
  end

  context 'Associations' do
    it { should have_many(:answers) }
    it { should belong_to(:asker) }
  end
end
