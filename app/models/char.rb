class Char < ApplicationRecord
  has_many :char_skills
  has_many :skills, through: :char_skills
end