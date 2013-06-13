class Skill < ActiveRecord::Base
  has_and_belongs_to_many :users
  validates_uniqueness_of :name

  def user_with_proficiency(proficiency_level)
    SkillsUser.where(skill_id: self.id, proficiency_level: proficiency_level).first.user
  end
end
