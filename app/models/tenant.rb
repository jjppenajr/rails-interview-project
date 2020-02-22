class Tenant < ActiveRecord::Base

  validates :name, presence: :true

  has_many :activity_logs, as: :actor

  before_create :generate_api_key

  private

  def generate_api_key
    self.api_key = SecureRandom.hex(16)
  end

end
