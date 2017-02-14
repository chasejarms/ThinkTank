class QuestionController < ApplicationController
  def index
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
  end

  def create
    @question = Question.create(question_params)
    if @question.save
      render questions_url
    else
      render 'new'
    end
  end

  def new
  end

  def update
    @question = Question.find_by(id: params[:id])
    if @question.update(question_params)
      render question_url(@question)
    else
      render 'edit'
    end
  end

  def edit
  end

  def destroy
  end

  private

  def question_params
    params.require(:question).permit(:body, :prize_money)
  end

end
