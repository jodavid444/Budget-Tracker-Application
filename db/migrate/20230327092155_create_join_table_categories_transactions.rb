class CreateJoinTableCategoriesEntities < ActiveRecord::Migration[7.0]
  def change
    create_join_table :categories, :entities, id: false do |t|
      t.index [:category_id, :entities_id]
    end
  end
end
