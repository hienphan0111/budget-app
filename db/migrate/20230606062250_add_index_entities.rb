class AddIndexEntities < ActiveRecord::Migration[7.0]
  def change
    add_index :entities, :author_id
  end
end
