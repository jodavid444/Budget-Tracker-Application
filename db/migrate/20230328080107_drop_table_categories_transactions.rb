class DropTableCategoriesTransactions < ActiveRecord::Migration[7.0]
  def change
    drop_table :categories_transactions
  end
end
