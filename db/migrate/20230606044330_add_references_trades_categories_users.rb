class AddReferencesTradesCategoriesUsers < ActiveRecord::Migration[7.0]
  def change
    add_reference :categories, :user, foreign_key: true
    add_foreign_key :trades, :users, column: :author_id
  end
end
