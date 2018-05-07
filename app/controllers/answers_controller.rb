class AnswersController < ApplicationController
  
  def index
    @answers = Answer.all
  end 

  def new
    @question = Question.find(params[:question_id])
    @answer = @question.answers.new
  end

  def show
    @question = Question.find(params[:question_id])
    @answer = Answer.find(params[:id])
    @commentable = @answer
    @comments = @commentable.comments
    @comment = Comment.new
  end
  
  def create
    @question = Question.find(params[:question_id])
    @answer = @question.answers.create(answer_params)
    @answer.user = current_user
    if @answer.save
      redirect_to @question
    else
      render :new  
    end
  end  


  def edit
    @question = Question.find(params[:question_id])
    @answer = Answer.find(params[:id])
  end

  def update
    @answer = Answer.find(params[:id])
    @answer.update(answer_params) 
    if @answer.save 
      redirect_to questions_path, :notice => "Answer update Successfully"
    else
      render :edit  
    end
  end

  def destroy
    @question = Question.find(params[:question_id])
    answer = Answer.find(params[:id])
    answer.destroy
    redirect_to @question, notice: "Answer has been delete"
  end

  private
  def answer_params
    params.require(:answer).permit(:content)
  end
end
