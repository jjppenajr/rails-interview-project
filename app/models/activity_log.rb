class ActivityLog < ActiveRecord::Base

  #validations
  validates :action, presence: true
  validates :success, presence: true

  #associations
  belongs_to :actor, polymorphic: true
end
