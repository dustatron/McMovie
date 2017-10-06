class AddMoreDetailsToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :budget, :integer
    add_column :movies, :imdb, :string
    add_column :movies, :release_date, :string
    add_column :movies, :revenue, :integer
    add_column :movies, :runtime, :integer
    add_column :movies, :tagline, :text
  end
end
