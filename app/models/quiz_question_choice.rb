class QuizQuestionChoice < ActiveRecord::Base
  belongs_to :question, dependent: :destroy
  attr_accessible  :txt, :iscorrect, :id
  attr_protected :question_id
end
