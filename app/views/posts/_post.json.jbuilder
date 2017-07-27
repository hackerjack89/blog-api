json.extract! post, :id, :title, :description, :user_id, :published, :created_at, :updated_at
json.url post_url(post, format: :json)
json.comments post.comments do |comment|
  json.partial! "comments/comment", comment: comment
end
