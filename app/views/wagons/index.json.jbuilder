json.array!(@wagons) do |wagon|
  json.extract! wagon, :id, :name, :email
  json.url wagon_url(wagon, format: :json)
end
