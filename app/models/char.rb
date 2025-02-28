class Char < ApplicationRecord
  has_many :char_skills, dependent: :destroy  
  has_many :skills, through: :char_skills

  def prof_bonus
    case lvl
    when 1..4 then 2
    when 5..8 then 3
    when 9..12 then 4
    when 13..16 then 5
    else 6
    end
  end
end
