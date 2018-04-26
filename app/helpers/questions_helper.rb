module QuestionsHelper
  def form_title
    @question.new_record? ? "Create Question" : "Edit Question"
  end
end
