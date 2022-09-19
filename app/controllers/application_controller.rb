class ApplicationController < Sinatra::Base

  set :default_content_type, 'application/json'

  # get all movies
  get '/movies' do
    movies = Movie.all()
    movies.to_json()
  end

  # create a new movie
  post '/movies' do
    movie = Movie.create(name: params[:name])
    movie.to_json()
  end

  # edit an existing movie
  patch '/movies/:id' do
    movie = Movie.all.find(params[:id])
    movie.update(name: params[:name])
    movie.to_json()
  end

  # delete a movie
  delete '/movies/:id' do
    movie = Movie.all.find(params[:id])
    movie.delete
    movie.to_json()
  end

  # get all reviews
  get '/reviews' do
    reviews = Review.all()
    reviews.to_json()
  end

  # create a new review
  post '/reviews' do
    review = Review.create(movie_title: params[:movie_title], body: params[:body], movie_id: params[:movie_id])
    review.to_json()
  end

  # edit a review
  patch '/reviews/:id' do
    review = Review.all.find(params[:id])
    review.update(body: params[:body])
    review.to_json()
  end

  # delete a review
  delete '/reviews/:id' do
    review = Review.all.find(params[:id])
    review.delete
    review.to_json()
  end

end