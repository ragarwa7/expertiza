class PlagiarismCheckerAssignmentSubmission < ActiveRecord::Base
  belongs_to :assignment
  has_many :plagiarism_checker_comparisons
  attr_accessible :name
  attr_protected :simicheck_id

  # t.string :name
  validates :name, presence: true
  # t.string :simicheck_id
  validates :simicheck_id, presence: true, uniqueness: true
end
