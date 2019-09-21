json.extract! rtable, :id, :name, :min_guest, :max_guest, :restaurant_id, :created_at, :updated_at
json.url rtable_url(rtable, format: :json)
