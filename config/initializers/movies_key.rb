# ustawienie klucza dla Rotten Tomatoes

key = ENV['TMDB_API_KEY']
if key.nil?
  puts "Please set your MovieDB key with"
  puts "$ export TMDB_API_KEY=YOUR_TMDb_KEY"
  puts "or get/generate new key within API > Details section"
  puts "on your acount TMDb page https://www.themoviedb.org/login"
else
    puts "TMDB API KEY: #{key}"
end

Tmdb::Api.key(key)
Tmdb::Api.language("en")  # optionally, set your default language

