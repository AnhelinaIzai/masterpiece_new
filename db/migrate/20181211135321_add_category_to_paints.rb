class AddCategoryToPaints < ActiveRecord::Migration[5.1]
  def change
    add_column :paints, :category, :string
  end
end
