class FixAddressColumnName < ActiveRecord::Migration
  def change
    rename_column :restaurants, :adress, :address
  end
end
