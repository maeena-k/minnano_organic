class AddAddressToSpreeUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :spree_users, :address, :string
    add_column :spree_users, :latitude, :float
    add_column :spree_users, :longitude, :float
  end
end
