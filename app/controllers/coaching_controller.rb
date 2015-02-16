class CoachingController < ApplicationController
  def answer

    @your_message = params[:query]

    @coach_answer = @your_message == @your_message.upcase ? "I can feel your motivation! " : ""
    if @your_message.upcase == "I am going to work right now!".upcase
      @coach_answer = ""
    elsif @your_message.split('').last == '?'
      @coach_answer += "Silly question, get dressed and go to work!"
    else
      @coach_answer += "I don't care, get dressed and go to work!"
    end
  end

  def ask
  end
end
