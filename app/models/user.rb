class User < ApplicationRecord
  belongs_to :team,
    primary_key: :id,
    foreign_key: :team_id,
    class_name: :Team

  belongs_to :company,
    primary_key: :id,
    foreign_key: :company_id,
    class_name: :Company
end
