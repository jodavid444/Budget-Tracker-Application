class CreateJoinTableCategoriesTransactions < ActiveRecord::Migration[7.0]
  def change
    create_join_table :categories, :transactions, id: false do |t|
      t.index [:category_id, :transaction_id]
    end
  end
end
