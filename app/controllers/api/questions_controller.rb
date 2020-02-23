class Api::QuestionsController < APIController
  def index
    questions = Question.is_public
    render json: questions.map { |question| QuestionSerializer.new(question).to_json }
  end
end