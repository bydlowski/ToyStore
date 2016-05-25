json.array!(@toys) do |toy|
  json.extract! toy, :id, :name, :description, :price, :stock, :image, :codigo
  json.url toy_url(toy, format: :json)
end
