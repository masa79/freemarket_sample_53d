class AddcategoriesIdToproducts < ActiveRecord::Migration[5.2]
  def change 
    add_column :products, :categories_id, :integer
  end
end
