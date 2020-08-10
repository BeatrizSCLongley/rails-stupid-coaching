class QuestionsController < ApplicationController
  # Needs to read the question from params and compute an instance variable @answer for the view to display
  def ask
    # Should handle two requests:
    # /answer?question=hello
    # /answer?question=what time is it?
  end

  def answer
    # Raise will show me what happens when I submit the form
    # Because I typed 'something' in ask, what I get when calling params is an hash {"question"=>"something"}
    # If I then call params[:question] I get 'something'
    @question = params[:question]
    @time_answer = "The time is #{Time.now}"
  end
end
