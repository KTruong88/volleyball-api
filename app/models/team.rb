class Team < ApplicationRecord
  has_many :matches,
    primary_key: :id,
    foreign_key: :team_id,
    class_name: :Match

  has_many :users,
    primary_key: :id,
    foreign_key: :user_id,
    class_name: :User

  belongs_to :team,
    primary_key: :id,
    foreign_key: :team_id,
    class_name: :Team
end
