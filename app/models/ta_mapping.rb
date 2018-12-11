class TaMapping < ActiveRecord::Base
  belongs_to :course
  belongs_to :ta
  has_paper_trail
  attr_accessible :id
  attr_protected :ta_id, :course_id

  def self.get_course_id(user_id)
    TaMapping.find_by(ta_id: user_id).course_id
  end

  def self.get_courses(user_id)
    Course.where("id = ?", TaMapping.find_by(ta_id: user_id).course_id)
  end
end
