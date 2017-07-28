json.extract! restaurant, :id, :name, :locality, :phone_no, :address, :created_at, :updated_at
json.url restaurant_url(restaurant, format: :json)
