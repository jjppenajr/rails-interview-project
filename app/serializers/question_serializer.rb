class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :title, :asker, :answers

  has_many :answers, serializer: AnswerSerializer
  belongs_to :asker, serializer: UserSerializer
end