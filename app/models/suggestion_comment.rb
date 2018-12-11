class SuggestionComment < ActiveRecord::Base
  validates :comments, presence: true
  belongs_to :suggestion
  attr_accessible :comments, :commenter, :vote
  attr_protected  :suggestion_id
end
