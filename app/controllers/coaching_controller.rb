class CoachingController < ApplicationController
  def answer
    @query = params[:question]
    @answer = coach_answer
    @answer = coach_answer_enhanced
  end

  def ask

  end
end

def coach_answer
  if @query == "I am going to work right now!"
    return ""
  elsif @query.include? "?"
    return "Silly question, get dressed and go to work!"
  else
    return "I don't care, get dressed and go to work!"
  end
end

def coach_answer_enhanced
  answer =  coach_answer
  if answer != ""
    if @query.upcase == @query
      return "I can feel your motivation! #{answer}"
    else
      answer
    end
  else
    ""
  end
end
