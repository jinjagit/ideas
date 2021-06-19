class AddUsernameToIdeas < ActiveRecord::Migration[6.1]
  def change
    add_column :ideas, :username, :string
  end
end
