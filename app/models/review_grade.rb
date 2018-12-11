class ReviewGrade < ActiveRecord::Base
  belongs_to :participant
  attr_accessible  :grade_for_reviewer, :comment_for_reviewer, :review_graded_at
  attr_protected :participant_id, :reviewer_id
end
