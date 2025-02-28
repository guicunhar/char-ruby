class RemoveProfBonusFromChars < ActiveRecord::Migration[8.0]
  def change
    remove_column :chars, :prof_bonus, :integer
  end
end
