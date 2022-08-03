json.extract! post, :id, :title, :text, :tag, :userID, :image, :created_at, :updated_at
json.url post_url(post, format: :json)
