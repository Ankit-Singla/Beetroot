json.extract! reservation, :id, :first_name, :last_name, :email, :phone_no, :requests, :text, :table_for, :integer, :at_time, :datetime, :created_at, :updated_at
json.url reservation_url(reservation, format: :json)
