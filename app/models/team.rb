class Team < ApplicationRecord
  has_many :matches

  has_many :users

  belongs_to :company
end
