json.extract! content, :id, :title, :description, :views, :downloads, :is_public, :created_at, :updated_at
json.url content_url(content, format: :json)
