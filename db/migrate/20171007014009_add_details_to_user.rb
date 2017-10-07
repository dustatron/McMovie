class AddDetailsToUser < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :tagline, :text
    add_column :users, :admin, :integer
    add_column :users, :photo, :string
    add_column :users, :bio, :text
  end
end
