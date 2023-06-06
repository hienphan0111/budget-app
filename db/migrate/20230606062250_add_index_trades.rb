class AddIndexTrades < ActiveRecord::Migration[7.0]
  def change
    add_index :trades, :author_id
  end
end
