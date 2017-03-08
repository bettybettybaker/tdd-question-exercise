class Question
  attr_accessor :answer
  def initialize (question)
    @question = question
  end
  def ask
    Reporter.export @question
  end
   def prompt
     self.answer = gets.chomp
     Reporter.export self.answer
   end
end

class Reporter
  def self.export(message)
    puts message
  end
end
