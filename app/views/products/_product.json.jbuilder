json.extract! product, :id, :name, :model, :description, :cost, :created_at, :updated_at
json.url product_url(product, format: :json)
