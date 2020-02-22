class User < ActiveRecord::Base

  #validations
  validates :name, presence: true

  #associations
  has_many :questions, inverse_of: :asker
  has_many :answers,   inverse_of: :answerer

end
