class AnswerSerializer < ActiveModel::Serializer
  attributes :body, :answerer

  def answerer
    UserSerializer.new(object.answerer).serializable_hash
  end
  # belongs_to :answerer, serializer: UserSerializer
end
