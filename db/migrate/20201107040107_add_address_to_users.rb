class AddAddressToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :street, :string
    add_column :users, :suburb, :string
    add_column :users, :state, :string
    add_column :users, :country, :string
    add_column :users, :postcode, :string
  end
end
