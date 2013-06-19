class CreateProficiencies < ActiveRecord::Migration
  def change
    create_table :proficiencies do |t|
      t.references :skill
      t.references :user
      t.integer :level, :default => 0
    end
    add_index :proficiencies, [:skill_id, :user_id], :unique => true
  end
end
