module AnswersHelper
  def form_title_answer
    @answer.new_record? ? "Create Answer" : "Edit Answer"
  end
end
