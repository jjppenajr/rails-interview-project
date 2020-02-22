class Answer < ActiveRecord::Base

  #validations
  validates :body, presence: true

  #associations
  belongs_to :question
  belongs_to :answerer, class_name: 'User', foreign_key: 'user_id'

end
