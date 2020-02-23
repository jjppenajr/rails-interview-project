class Tenant < ActiveRecord::Base

  validates :name, presence: :true

  has_many :activity_logs, as: :actor

  before_create :generate_api_key

  def add_request_count(success, action)
    ActivityLog.create(
      action: action,
      actor: self ,
      success: success,
    )
  end

  def request_count
    return activity_logs.try(:count)
  end

private
  def generate_api_key
    self.api_key = SecureRandom.hex(16)
  end

end
