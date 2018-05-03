class AnswersController < ApplicationController
  
  def index
    @answers = Answer.all
  end 

  def new
    @question = Question.find(params[:question_id])
    @answer = @question.answers.new
  end
  
  def create
    @question = Question.find(params[:question_id])
    @answer = @question.answers.create(answer_params)
    if @answer.save
      redirect_to questions_answer_path
    else
      render :new  
    end
  end  


  private
  def answer_params
    params.require(:answer).permit(:content)
  end
end
