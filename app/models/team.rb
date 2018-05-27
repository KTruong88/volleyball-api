class Team < ApplicationRecord
  has_many :matches,
    primary_key: :id

  has_many :users,
    primary_key: :id

  belongs_to :company
end
