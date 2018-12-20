class AddPictureToPaints < ActiveRecord::Migration[5.1]
  def change
    add_column :paints, :picture, :string
  end
end
