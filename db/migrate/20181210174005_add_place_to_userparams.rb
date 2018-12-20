class AddPlaceToUserparams < ActiveRecord::Migration[5.1]
  def change
    add_column :userparams, :place, :string
  end
end
