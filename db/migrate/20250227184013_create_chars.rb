class CreateChars < ActiveRecord::Migration[8.0]
  def change
    create_table :chars do |t|
      t.string :name
      t.integer :str
      t.integer :dex
      t.integer :con
      t.integer :int
      t.integer :wis
      t.integer :cha
      t.integer :lvl
      t.integer :prof_bonus
      t.references :skill, null: false, foreign_key: true

      t.timestamps
    end
  end
end
