class AddUsernameToReviews < ActiveRecord::Migration[7.1]
  def change
    add_column :reviews, :username, :string
  end
end
