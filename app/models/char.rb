class Char < ApplicationRecord
  has_many :char_skills, dependent: :destroy  
  has_many :skills, through: :char_skills
end
