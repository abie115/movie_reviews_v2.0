json.array!(@comments) do |comment|
  json.extract! comment, :id, :content, :nick, :add_date, :movie_id
  json.url comment_url(comment, format: :json)
end
