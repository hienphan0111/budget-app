class CreateGroupsEntities < ActiveRecord::Migration[7.0]
  def change
    create_table :groups_entities do |t|
      t.references :group, null: false, foreign_key: true, index: true
      t.references :entity, null: false, foreign_key: true, index: true

      t.timestamps
    end
  end
end
