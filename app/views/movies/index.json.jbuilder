json.array!(@movies) do |movie|
  json.extract! movie, :id, :title, :category, :release_date, :review, :name
  json.url movie_url(movie, format: :json)
end
