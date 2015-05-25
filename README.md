# Movie Reviews

Projekt na egzamin z przedmiotu Architektura Sieci Web.<br>
Rozwiniecie projektu https://github.com/abie115/movie_reviews<br>
Movie Review jest aplikacją umożliwiającą przeglądanie bazy filmów oraz podstawowych informacji o tych filmach, a także z możliwoscią przeglądania ich trailerów. Dodatkowo można dodawać własne recenzje filmów, oraz komentować wystawione już recenzje. W planach było jeszcze wprowadzenie możliwości przypomnienia hasła, jednak nie nie została ona wprowadzona przez brak czasu.<br>
Projekt korzysta z API udostpnianego przez stronę www.themoviedb.org<br>
<br>
Projekt zostal stworzony przez zespół Vienas.<br>
Skład zespołu:<br>
 Aldona Biewska (224605)<br>
 Natalia Kospat Pawłowska (215580)<br>
 <br>

* Ruby version: 2.2.1<br>
* Ruby on Rails version: 4.2.1<br>
* Dodatkowe gemy:<br>
```
 gem 'sass-rails', '>= 5.0.2'<br>
 gem 'bootstrap-sass', '~> 3.3.4'<br>
 gem 'will_paginate', '3.0.7'<br>
 gem 'bootstrap-will_paginate', '0.0.10'<br>
 gem 'bcrypt', '3.1.10'<br>
 gem 'themoviedb', '~> 0.1.0'<br>
```
<br>

* Deployment instructions:<br>
```
bundle install --without production
rake db:migrate
rake db:seed

export TMDB_API_KEY="key"
where key - key generated by www.themoviedb.org
```
* Production instructions for Heroku:
```
heroku login
heroku create
git push heroku master
heroku run rake db:migrate
heroku config:set TMDB_API_KEY="key"
heroku open
```

