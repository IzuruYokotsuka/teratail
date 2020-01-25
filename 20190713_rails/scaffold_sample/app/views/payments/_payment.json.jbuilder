json.extract! payment, :id, :name, :age, :created_at, :updated_at
json.url payment_url(payment, format: :json)
