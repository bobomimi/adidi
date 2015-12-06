json.array!(@adis) do |adi|
  json.extract! adi, :id, :name
  json.url adi_url(adi, format: :json)
end
