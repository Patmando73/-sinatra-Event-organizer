#Sinatra Event organizer

###Description
This organizer will have:
```
-Users.
-Places with descriptions and attractions.
-The ability to like and rate a place.
-A display of the most liked and most highly rated places
```
Users will be able to add new places places with descriptions and attractions specific to that place such as happy hours
and $0.96 bowling during curtain days and times. The users will also be able to like and rate the places. Users will also
be able to view what are the most popular places on the list.


###Tables
Users
```
-id
-name
```
Places
```ruby
-id
-name
-attractions
-age requirement
-address
-parking garage - boolean
```

Likes
```
-id
-user id
-place id
-rating
```


###"Should" Cases
```
-Be able to create a user with an name.
-Be able to add a place with all its attributes
-Be able to view all the different places available and like/rate them.
-Be able to view the most popular places.
```


###"Should Not" Cases
```
-Delete a place that has more then 3 likes.
-Add a place without a name, address, or parking garage boolean.
```

###Requirements
```
-At least three models
  -At least one _one-to-many_ relationship
  -At least one _many-to-many_ relationship
-Unit tests for all business logic
-Ability to fully interact with the application from the browser
```

