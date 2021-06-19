class AddIdeaRefToComments < ActiveRecord::Migration[6.1]
  def change
    add_reference :comments, :idea, null: false, foreign_key: true
  end
end
