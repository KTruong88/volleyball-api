class Company < ApplicationRecord
  has_many :teams,
    primary_key: :id,
    foreign_key: :team_id,
    class_name: :Team

  has_many :users,
    primary_key: :id,
    foreign_key: :user_id,
    class_name: :User
end
