# movie_reviews_v2.0
* Ruby version: 2.2.1<br>
* Ruby on Rails version: 4.2.1<br>
* Dodatkowe gemy:<br>
gem 'sass-rails', '>= 5.0.2'<br>
gem 'bootstrap-sass', '~> 3.3.4'<br>
gem 'will_paginate',           '3.0.7'<br>
gem 'bootstrap-will_paginate', '0.0.10'<br>
gem 'bcrypt',               '3.1.10'<br>
<br>
* Deployment instructions:<br>
```
bundle install --without production
rake db:migrate
rake db:seed
```