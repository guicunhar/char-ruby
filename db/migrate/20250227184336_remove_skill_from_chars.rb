class RemoveSkillFromChars < ActiveRecord::Migration[8.0]
  def change
    remove_reference :chars, :skill, null: false, foreign_key: true
  end
end
