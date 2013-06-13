class User < ActiveRecord::Base
  has_and_belongs_to_many :skills

  def set_proficiency_for(skill, proficiency_level)
    user_skill = SkillsUser.where(user_id: self.id, skill_id: skill.id).first
    user_skill.proficiency_level = proficiency_level
    user_skill.save
  end

  def proficiency_for(skill)
    SkillsUser.where(user_id: self.id, skill_id: skill.id).first.proficiency_level
  end
end
