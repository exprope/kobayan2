json.array!(@shichosons) do |shichoson|
  json.extract! shichoson, :id, :todofuken_id, :name
  json.url shichoson_url(shichoson, format: :json)
end
