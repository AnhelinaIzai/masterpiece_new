class AddEmailToUserparams < ActiveRecord::Migration[5.1]
  def change
    add_column :userparams, :email, :string
  end
end
