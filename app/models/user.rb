class User < ActiveRecord::Base
  has_many :skills, :through => :proficiencies
  has_many :proficiencies

  def set_proficiency_for(skill, proficiency_level)
    proficiency = self.proficiencies.find_by_skill_id(skill.id)
    proficiency.level = proficiency_level
    proficiency.save
  end

  def proficiency_for(skill)
    Proficiency.where(user_id: self.id, skill_id: skill.id).first.level
  end
end
