json.extract! product, :id, :category_id, :name, :serial_number, :size, :cost, :distype_id, :sku, :description, :created_at, :updated_at
json.url product_url(product, format: :json)
