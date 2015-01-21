json.array!(@jushos) do |jusho|
  json.extract! jusho, :id, :todofuken_id, :shichoson_id, :sonotajusho
  json.url jusho_url(jusho, format: :json)
end
