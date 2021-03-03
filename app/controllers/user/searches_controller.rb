class User::SearchesController < ApplicationController
  def new
  end

  def index
    @pictures = Picture.where(['title LIKE ?', "%#{params[:search_picture]}"])

    @questions = Question.where(['title LIKE ?', "%#{params[:seatch_question]}"])
  end
end
