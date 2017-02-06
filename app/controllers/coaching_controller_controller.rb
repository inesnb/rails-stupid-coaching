class CoachingControllerController < ApplicationController
  def answer
    @question = params[:query]
    @answer = coach_answer_enhanced(@question)
  end

  def ask
  end

  private

  def coach_answer(your_message)
    # TODO: return coach answer to your_message
    until your_message == "I am going to work right now!"
      if your_message [-1] == "?"
        return "Silly question, get dressed and go to work!"
      else
        return "I don't care, get dressed and go to work!"
      end

    end
    return ""
  end

  def coach_answer_enhanced(your_message)
    if your_message == your_message.upcase

      until your_message == "I AM GOING TO WORK RIGHT NOW!"
        if your_message [-1] == "?"
          return "I can feel your motivation! Silly question, get dressed and go to work!"
        else
          return "I can feel your motivation! I don't care, get dressed and go to work!"
        end
      end
      return ""
      else
        coach_answer(your_message)
    end
  end

end



