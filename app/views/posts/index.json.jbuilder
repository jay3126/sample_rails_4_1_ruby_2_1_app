json.array!(@posts) do |post|
  json.extract! post, :id, :post, :created_by
  json.url post_url(post, format: :json)
end
