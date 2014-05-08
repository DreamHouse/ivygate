class AddOwnerOccupyToContact < ActiveRecord::Migration
  def change
    add_column :contact_requests, :ownerOccupied, :string
  end
end
