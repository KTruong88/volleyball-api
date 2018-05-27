class Match < ApplicationRecord
  has_many :teams,
    primary_key: :id,
    foreign_key: :match_id,
    class_name: :Team
end
