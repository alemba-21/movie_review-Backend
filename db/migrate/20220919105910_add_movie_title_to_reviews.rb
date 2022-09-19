class AddMovieTitleToReviews < ActiveRecord::Migration[6.1]
  def change
    add_column :reviews, :movie_title, :string
  end
end
