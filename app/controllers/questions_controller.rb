class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:ask]

    if @question == 'I am going to work'
      @coachanswer = 'Great!'
    elsif @question.end_with?("?")
      @coachanswer = 'Silly question, get dressed and go to work!'
    else
      @coachanswer = 'I don\'t care, get dressed and go to work!'
    end
  end
end
