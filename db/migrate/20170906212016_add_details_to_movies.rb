class AddDetailsToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :body, :text
    add_column :movies, :trailer, :string
  end
end
