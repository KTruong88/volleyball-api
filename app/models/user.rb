class User < ApplicationRecord
  belongs_to :team,
    primary_key: :id

  belongs_to :company,
    primary_key: :id
end
