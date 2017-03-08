require "./questions-classes"

questions = {
  name: Question.new("What's your name?")
}

questions.each do |label, question|
  question.ask
  question.prompt
end

Reporter.export """
Hey #{questions[:name].answer}, thanks for answering my questions.
"""
