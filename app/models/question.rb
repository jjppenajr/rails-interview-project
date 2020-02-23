class Question < ActiveRecord::Base

  scope :is_public, -> {
    where(private: false)
  }

  #validations
  validates :title, presence: true

  #associations
  has_many :answers
  belongs_to :asker, class_name: 'User', foreign_key: 'user_id'

end
