json.extract! reminder, :id, :title, :description, :day, :time, :created_at, :updated_at
json.url reminder_url(reminder, format: :json)
