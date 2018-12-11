class SubmissionRecord < ActiveRecord::Base
  attr_accessible :type, :content, :operation, :user
  attr_protected :team_id, :assignment_id
  validates :content, presence: true
  validates :operation, presence: true
  validates :team_id, presence: true
  validates :user, presence: true
  validates :assignment_id, presence: true
end
