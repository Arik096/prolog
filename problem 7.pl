person(kashif).
person(asif).
person(fahad).
person(tareq).
person(noman).
person(aslam).
person(jamil).

city(dhaka).
city(cumilla).
city(chittagong).

lives_in(kashif,02).
lives_in(asif,02).
lives_in(fahad,031).
lives_in(tareq,081).
lives_in(noman,031).
lives_in(aslam,081).
lives_in(jamil,02).

phone_no(kashif,544342).
phone_no(asif,112345).
phone_no(fahad,531612).
phone_no(tareq,674245).
phone_no(noman,753232).
phone_no(aslam,812341).
phone_no(jamil,912331).

city_code(dhaka,02).
city_code(cumilla,081).
city_code(chittagong,031).

belong_to(Person,City):-lives_in(Person,X)\==city_code(City,X).

lives(Person):-lives_in(Person,X).