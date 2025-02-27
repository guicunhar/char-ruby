class Skill < ApplicationRecord
    has_many :char_skills
    has_many :chars, through: :char_skills
end
