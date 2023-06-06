class CreateCategoriesTrades < ActiveRecord::Migration[7.0]
  def change
    create_table :categories_trades do |t|
      t.references :category, null: false, foreign_key: true, index: true
      t.references :trade, null: false, foreign_key: true, index: true

      t.timestamps
    end
  end
end
