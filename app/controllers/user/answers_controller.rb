class User::AnswersController < ApplicationController
  def new
    @answer = Answer.new
  end

  def create
    @answer = Answer.new(answer_params)
    question = Question.find(params[:question_id])
    @answer.question_id = question.id
    @answer.save!
    redirect_to questions_path(@question)
  end

  def show
    @question = Question.find(params[:question_id])
    @answer = Answer.find(params[:id])
  end

  def edit
    @answer = Answer.find(params[:id])
  end

  def update
    @question = Question.find(params[:id])
    @answer = Answer.find(params[:id])
    @answer.update(answer_params)
    redirect_to question_path(@question)
  end

  def destroy
    @question = Question.find(params[:question_id])
    @answer = Answer.find(params[:id])
    @answer.destroy
    redirect_to questions_path(@question)
  end

  private
  def answer_params
    params.require(:answer).permit(:message, :answer_image)
  end
end
