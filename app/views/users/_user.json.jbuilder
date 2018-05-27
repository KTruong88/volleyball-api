json.extract! user, :id, :name, :email, :company, :phone_number, :team, :created_at, :updated_at
json.url user_url(user, format: :json)
