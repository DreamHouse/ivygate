class AddPropertyType < ActiveRecord::Migration
  def change
    add_column :contact_requests, :propertyType, :string
  end
end
