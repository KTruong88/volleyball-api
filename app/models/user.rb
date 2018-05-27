class User < ApplicationRecord
  belongs_to :team,
    primary_key: :id,
    foreign_key: :team_id,
    class_name: :Team
end
