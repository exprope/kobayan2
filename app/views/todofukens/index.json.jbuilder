json.array!(@todofukens) do |todofuken|
  json.extract! todofuken, :id, :name
  json.url todofuken_url(todofuken, format: :json)
end
