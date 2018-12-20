class AddUserIdToPaint < ActiveRecord::Migration[5.1]
  def change
    add_column :paints, :user_id, :integer
  end
end
