class User::QuestionsController < ApplicationController
  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    @question.save
    redirect_to user_questions_path
  end

  def show
    @question = Question.find(params[:id])
  end

  def index
    @questions = Question.all
  end

  def edit
    @question = Question.find(params[:id])
  end

  def update
    @question = Question.find(params[:id])
    @question.update(question_params)
    redirect_to user_questions_path
  end

  def destroy
    @question = Question.find(params[:id])
    @question.destroy
    redirect_to user_questions_path
  end

  private
  def question_params
    params.require(:question).permit(:title, :message)
  end
end
