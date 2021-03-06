class QuestionsController < ApplicationController
  before_action :login_require, except: [:index,:show]

  def index
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
    @commentable = @question
    @comments = @commentable.comments
    @comment = Comment.new
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    @question.user = current_user
    if @question.save
      redirect_to questions_path, notice: "Question has been created"
    else
      render :new
    end  
  end

  def edit 
    @question = Question.find(params[:id])
  end

  def update
    @question = Question.find(params[:id])
    if @question.update(question_params)
      redirect_to questions_path, notice: "Question has been edit"
    else
      render :edit  
    end
  end

  def destroy
    question = Question.find(params[:id])
    question.destroy 
    redirect_to questions_path, notice: "Question has been Deleted"  
  end


  private
  def question_params
    params.require(:question).permit(:title,:content)
  end
end
