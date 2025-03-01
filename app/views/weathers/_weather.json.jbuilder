json.extract! weather, :id, :city, :user_id, :created_at, :updated_at
json.url weather_url(weather, format: :json)
