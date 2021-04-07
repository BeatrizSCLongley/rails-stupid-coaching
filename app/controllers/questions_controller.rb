class QuestionsController < ApplicationController
  # Needs to read the question from params and compute an instance variable @answer for the view to display
  def ask
  end

  def answer
    # Raise will show me what happens when I submit the form
    # Because I typed 'something' in ask, what I get when calling params is an hash {"question"=>"something"}
    # If I then call params[:question] I get 'something'
    @question = params[:question]
    @time_answer = "The time is #{Time.now}"

    if @question.blank?
      @answer = "I can't hear you!"
    elsif @question =~ /i am going to work/i
      @answer = "Great!"
    elsif @question.ends_with?('?')
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
