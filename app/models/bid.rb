class Bid < ActiveRecord::Base
  belongs_to :topic, class_name: 'SignUpTopic'
  belongs_to :user
  attr_accessible :updated_at, :priority

  attr_protected :topic_id, :team_id, :created_id
end
