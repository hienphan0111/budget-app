class CreateTrades < ActiveRecord::Migration[7.0]
  def change
    create_table :trades do |t|

      t.string :name
      t.decimal :amount
      t.bigint :author_id

      t.timestamps
    end
  end
end
