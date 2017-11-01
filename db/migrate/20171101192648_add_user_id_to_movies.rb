class AddUserIdToMovies < ActiveRecord::Migration
  def change
      add_column :movies, :user_id, :integer
      add_column :movies, :user_name, :string
  end
end
