class Match < ApplicationRecord
  has_many :teams,
    primary_key: :id

end
