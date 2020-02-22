class Question < ActiveRecord::Base

  #validations
  validates :title, presence: true

  #associations
  has_many :answers
  belongs_to :asker, class_name: 'User', foreign_key: 'user_id'

end
