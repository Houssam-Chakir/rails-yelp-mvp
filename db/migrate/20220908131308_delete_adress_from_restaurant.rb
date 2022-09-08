class DeleteAdressFromRestaurant < ActiveRecord::Migration[7.0]
  def change
    remove_column :restaurants, :adress, :string
  end
end
