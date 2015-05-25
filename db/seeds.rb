# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
    User.create(name:'test', email:'testowy@example.com', password:'123456')
    User.create(name:'olek', email:'olek@example.com', password:'123456')

    Review.create(title:'Swietny film', description:'Nowy film z kultowej seri, polecam wszystkim, dla fanow seri przede wszystkim', movie_id:76341, user_id:1)
    Review.create(title:'Czy wkoncu nas zaskoczą?', description:'Nowy film z kultowej seri, polecam wszystkim, dla fanow seri przede wszystkim', movie_id:76341, user_id:1)   
    Review.create(title:'Niespodzienka od Marvela', description:'Jak zwykle film buduje napiecie od samego początku. Wielki nakład finansowy urzeczywisnil się w super efektach specjalnych. Polecam', movie_id:99861, user_id:1)
    Review.create(title:'Kolejna bajka', description:'To, że jestem sceptycznie nastawiony do wszelakich filmow sci-fi z udziałem brygady marvela', movie_id:99861, user_id:1)
   Review.create(title:'Czy wkoncu nas zaskoczą?', description:'Nowy film z kultowej seri, polecam wszystkim, dla fanow seri przede wszystkim', movie_id:99861, user_id:1)
    Comment.create(content:'Nie znasz sie:(:(',review_id:2, nick:test)
    Comment.create(content:'Super recenzja',review_id:3, nick:olek)
    Comment.create(content:'Nie znasz sie:(:(',review_id:4, nick:test)
    Comment.create(content:'No nie wiem',review_id:3, nick:olek)
    Comment.create(content:'zgadzam sie',review_id:4, nick:olek)

    Movie.create(title: 'Dirty Dancing', category: 'Romance', release_date: '1990-04-11', name:'kasia', review:'Film z serii dla dziewczyn. Główna bohaterka Baby zakochuje się w instruktorze tańca. Co dalej samemu można się domyśleć;)')
    Movie.create(title: 'Non-Stop', category: 'Action', release_date: '2014-12-12', name:'kasia', review:' Kolejny film z moim ulubionym aktorem Liamem Nessonem. Kolejny film, w którym wciela się w agenta, który musi uratować ludzi przed złoczyńcami! Tym razem musi uratować pasażerów i załogę samolotu opanowanego przez terrorystów.')
    Movie.create(title: '13th Friday', category: 'Horror', release_date: '2011-06-11', name:'kasia', review:' Nowa odsłona znanego horroru. Grupa znajomych wybiera się do domu nad jeziorem Crystal Lake. Podczas weekendu zostają zaatakowani przez psychopatę. POlecam dla fanów serii!')
    Movie.create(title: 'X-Men: First Class', category: 'Sci-Fi', release_date: '2011-05-26', name:'kasia', review:'Film dla fanów Marvela. Młodzi Charles Xavier i Erik Lehnsherr gromadzą drużynę mutantów X-menów, by zapobiec III wojnie światowej.')
    Movie.create(title: 'Rise of the Planet of the Apes', category: 'Action', release_date: '2011-07-06', name:'kasia', review:'Jako fanka planety małp, długo czekałam, aż ukaże się kolejna współczesna wersja filmu. I nie zawiodłam się! W wyniku genetycznych eksperymentów rodzi się szympans o imieniu Cezar. Jeden z naukowców postanawia zabrać go do domu i wychowywać jak człowieka. Świetny film, super charakteryzacje. ')
    Movie.create(title: 'The Pyramid', category: 'Horror', release_date: '2014-04-12', name:'ola', review:' Film twórców "Wzgórza mają oczy". Mit o Anubisie, strażniku umarłych, w nowym wydaniu. Polecam film dla fanów horrorów, gdyż żadnego nie można przeoczyć! ')
    Movie.create(title: 'Divergent', category: 'Sci-Fi', release_date: '2014-04-11', name:'evan', review:'Film, o którym wcale głośno nie było. Obejrzałem przypadkiem i musze powiedzieć, że nie żałuję. Przepiękny film opowidający o sile, uczuciu i determinacji. Czekam z niecierpliwością na drugą część')
    Movie.create(title: 'The Croods', category: 'Animation', release_date: '2013-05-11', name:'evan', review:'Polecam ten film dla całej rodziny. Opowiada o perypetiach rodziny w czasach prehistorycznych. A wszystko zaczyna się od chłopca z przyszłości, który przybywa z rewolucyjnym wynalazkiem jakim jest ogień.')
    Movie.create(title: 'Now You See Me', category: 'Thriller', release_date: '2013-05-21', name:'iza', review:'Film trzymający w napięciu do samego końca. Nie jestem fanką thrillerów, jednak ten był świetny. Opowiada o iluzjonistach, którzy podczas przedstawień napadają na banki, a ukradzione pieniądze rozdają publiczności. ')
    Movie.create(title: 'Elysium', category: 'Sci-Fi', release_date: '2013-07-07', name:'evan', review:'Film dający wiele do myślenia. Swietna rola Matt\'a Damon\'a jako Maxa oraz Sharlto Copley\'a jako Kruger\'a. Garstka wybrańców żyje na luksusowej stacji orbitalnej, a reszta ludzi w przeludnionych miastach zdewastowanej Ziemi. Max, mieszkaniec planety, próbuje walczyć z niesprawiedliwym podziałem. ')
    Movie.create(title: 'The Other Woman', category: 'Comedy', release_date: '2014-04-1', name:'evan', review:'Świetna komedia na poprawę humoru, Cameron Diaz jako Carly odkrywa, że jej ukochany ma żonę. Wieć postanawia odwiedzić jego żonę. Kobiety zaprzyjaźniają się i łączą siły, by dokonać zemsty.')
    Movie.create(title: 'Taken 3', category: 'Action', release_date: '2015-03-12', name:'adrian', review:' I\'ve enjoyed  for this movie very much so I was really anxious to see how they would continue the story. Ex-agent Bryan Mills is accused of a ruthless murder he never committed. Mills brings out his particular set of skills to find the true killer and clear his name. ')
    Movie.create(title: 'Grease', category: 'Romance', release_date: '1978-04-14', name:'przemek', review:'Film dla miłośników bad boy\'ów i grzecznych dziewczynek. Sandy i Danny zakochują się podczas wakacji. Gdy wakacje się kończą, okazuje się, że trafili do tej samej szkoły. Ich miłość zostaje wystawiona na próbę.')
    Movie.create(title: 'Transcedence', category: 'Sci-Fi', release_date: '2014-05-12', name:'kasia', review:'Świetna rola Johnny\'ego Depp\'a jako naukowca pracującego nad stworzeniem sztucznej inteligencji. Naukowiec Will Caster zostaje postrzelony przez wrogów rozwoju sztunej inteligencji. Zrozpaczona żona probuje przenieś umysł Will\'a  do komputera. Film ukazujący do czego może prowadzić zapomnienie o ludzkich emocjach oraz dążenie do zasąpienia człowieka we wszystkim.')
    Movie.create(title: 'Casino Royale', category: 'Action', release_date: '2006-02-12', name:'ola', review:' Po 4 latach przerwy James Bond powraca na ekrany, jako pierwsze zadanie otrzymuje powstrzymac króla pokera  Le Chiffre, pomaga mu w tym piękna Vesper Lynd. świetny film trzymający w napięciu do ostaniej chwili. Polecam! ')
