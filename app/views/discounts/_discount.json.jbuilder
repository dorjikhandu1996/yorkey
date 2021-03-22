json.extract! discount, :id, :product_id, :discount_name, :discount_amount, :discount_percent, :start, :end, :created_at, :updated_at
json.url discount_url(discount, format: :json)
