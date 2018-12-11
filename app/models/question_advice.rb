class QuestionAdvice < ActiveRecord::Base
  belongs_to :question

  attr_accessible :score, :advice
  attr_protected :question_id
end
