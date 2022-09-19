puts "Seeding!"

# movie instances
movie = Movie.create(name: "Blade Runner")
movie1 = Movie.create(name: "Blood Shot")
movie2 = Movie.create(name: "Home run")

# review instances
review = Review.create(body: "A great movie", movie_title: "Blade Runner", movie: movie)
review1 = Review.create(body: "has action", movie_title: "Blood Shot", movie: movie)
review2 = Review.create(body: "Fictious", movie_title: "Blade Runner", movie: movie1)

puts "Done seeding!"