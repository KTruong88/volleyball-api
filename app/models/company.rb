class Company < ApplicationRecord
  has_many :teams,
    class_name: :Team

  has_many :users,
    class_name: :User
end
