class RemoveCategoryFromPaint < ActiveRecord::Migration[5.1]
  def change
    remove_column :paints, :category, :string
  end
end
