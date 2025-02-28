class Skill < ApplicationRecord
    has_many :char_skills, dependent: :destroy
    has_many :chars, through: :char_skills
end
