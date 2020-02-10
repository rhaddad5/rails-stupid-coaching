class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params["question"]
    @answer = nil
      if @question.include? "?"
        return @answer = "Silly question, get dressed and go to work!"
      elsif @question == "I am going to work right now!"
        return @answer = "Great!"
      else
        return @answer = "I don't care, get dressed and go to work!"
      end
  end
end
