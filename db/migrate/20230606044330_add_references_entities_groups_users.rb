class AddReferencesEntitiesGroupsUsers < ActiveRecord::Migration[7.0]
  def change
    add_reference :groups, :user, foreign_key: true
    add_foreign_key :entities, :users, column: :author_id
  end
end
