class Company < ApplicationRecord
  has_many :teams

  has_many :users
end
