class AssignmentQuestionnaire < ActiveRecord::Base
  belongs_to :assignment
  belongs_to :questionnaire
  has_paper_trail
  attr_accessible :notification_limit, :questionnaire_weight, :used_in_round, :dropdown

  attr_protected :assignment_id,
                 :questionnaire_id,
                 :user_id
end
