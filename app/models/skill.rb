class Skill < ActiveRecord::Base
  has_many :users, :through => :proficiencies
  has_many :proficiencies

  validates_uniqueness_of :name

  def user_with_proficiency(proficiency_level)
    Proficiency.where(skill_id: self.id, level: proficiency_level).first.user
  end
end
