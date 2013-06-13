class CreateSkillsUser < ActiveRecord::Migration
  def change
    create_table :skills_users do |t|
      t.integer :skill_id
      t.integer :user_id
      t.integer :proficiency_level, :default => 0
    end
    add_index :skills_users, [:skill_id, :user_id], :unique => true
  end
end
