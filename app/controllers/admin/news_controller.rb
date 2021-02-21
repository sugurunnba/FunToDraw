class Admin::NewsController < ApplicationController
  def new
    @new = New.new
  end

  def create
    @new = New.new(new_params)
    @new.save
    redirect_to admin_news_index_path
  end


  def index
    @news = New.all
  end

  def show
    @new = New.find(params[:id])
  end

  def edit
    @new = New.find(params[:id])
  end

  def update
    @new = New.find(params[:id])
    @new.update(new_params)
    redirect_to admin_news_index_path
  end

  def destroy
    @new = New.find(params[:id])
    @new.destroy
    redirect_to admin_news_index_path
  end

  private
  def new_params
    params.require(:new).permit(:title, :message, :news_image)
  end
end
