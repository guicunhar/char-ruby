class CreateCharSkills < ActiveRecord::Migration[8.0]
  def change
    create_table :char_skills do |t|
      t.references :char, null: false, foreign_key: true
      t.references :skill, null: false, foreign_key: true

      t.timestamps
    end
  end
end
