json.extract! person, :id, :name, :address, :phone, :cost, :created_at, :updated_at
json.url person_url(person, format: :json)
