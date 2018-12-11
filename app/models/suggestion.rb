class Suggestion < ActiveRecord::Base
  validates :title, :description, presence: true
  has_many :suggestion_comments
  attr_accessible  :title, :description, :status, :signup_preference
  attr_protected :assignment_id, :unityID
end
